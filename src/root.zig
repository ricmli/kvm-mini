//! By convention, root.zig is the root source file when making a library.
const std = @import("std");
const os = std.os.linux;
pub const kvm = @import("generated_kvm.zig");

pub const Error = error{
    OpenKvmFailed,
    IoctlFailed,
    CloseVmFailed,
    CloseVcpuFailed,
    AddRegionFailed,
};

pub fn ioctl(fd: i32, request: u32, arg: usize) !usize {
    const ret = os.ioctl(fd, request, arg);
    if (@as(isize, @bitCast(ret)) < 0) {
        return Error.IoctlFailed;
    }
    return ret;
}

pub const Vm = struct {
    allocator: std.mem.Allocator,
    vm_fd: i32,
    vcpus: [16]u32,
    vcpu_count: usize,
    owned_slices: [8][]u8,
    owned_count: usize,

    pub fn createVcpu(self: *Vm, vcpuId: u32) !u32 {
        const ret = try ioctl(@intCast(self.vm_fd), kvm.KVM_CREATE_VCPU, @intCast(vcpuId));
        const fd: u32 = @intCast(ret);
        if (self.vcpu_count >= self.vcpus.len) {
            // simple fixed-capacity implementation: refuse to add more
            return Error.IoctlFailed;
        }
        self.vcpus[self.vcpu_count] = fd;
        self.vcpu_count += 1;
        return fd;
    }

    pub fn registerMemoryRegion(self: *Vm, slot: u32, guest_phys_addr: u64, mem: []u8) !void {
        var region: kvm.struct_kvm_userspace_memory_region = .{
            .slot = slot,
            .flags = 0,
            .guest_phys_addr = guest_phys_addr,
            .memory_size = @intCast(mem.len),
            .userspace_addr = @intFromPtr(mem.ptr),
        };

        _ = try ioctl(@intCast(self.vm_fd), kvm.KVM_SET_USER_MEMORY_REGION, @intFromPtr(&region));
    }

    pub fn allocateAndRegister(self: *Vm, slot: u32, guest_phys_addr: u64, size: usize) ![]u8 {
        if (self.owned_count >= self.owned_slices.len) {
            return Error.AddRegionFailed;
        }

        const buf = try self.allocator.alloc(u8, size);
        errdefer self.allocator.free(buf);
        // zero the memory for safety
        @memset(buf, 0);

        try self.registerMemoryRegion(slot, guest_phys_addr, buf);

        self.owned_slices[self.owned_count] = buf;
        self.owned_count += 1;
        return buf;
    }

    pub fn close(self: *Vm) !void {
        // close vcpus
        for (self.vcpus[0..self.vcpu_count]) |fd| {
            _ = os.close(@intCast(fd));
        }

        // free owned slices
        if (self.owned_count > 0) {
            for (self.owned_slices[0..self.owned_count]) |s| {
                self.allocator.free(s);
            }
        }

        if (self.vm_fd != -1) {
            const r = os.close(@intCast(self.vm_fd));
            if (r != 0) return Error.CloseVmFailed;
            self.vm_fd = -1;
        }
    }

    pub fn setupState(_: *Vm, vcpuFd: u32, rip: u64, rsp: u64) !void {
        var regs: kvm.struct_kvm_regs = .{};
        _ = try ioctl(@intCast(vcpuFd), kvm.KVM_GET_REGS, @intFromPtr(&regs));

        regs.rip = rip;
        regs.rflags = 2;
        regs.rsp = rsp;

        _ = try ioctl(@intCast(vcpuFd), kvm.KVM_SET_REGS, @intFromPtr(&regs));

        var sregs: kvm.struct_kvm_sregs = .{};
        _ = try ioctl(@intCast(vcpuFd), kvm.KVM_GET_SREGS, @intFromPtr(&sregs));

        sregs.cs.base = 0;
        sregs.cs.selector = 0;

        _ = try ioctl(@intCast(vcpuFd), kvm.KVM_SET_SREGS, @intFromPtr(&sregs));
    }

    pub fn runVcpu(_: *Vm, k: *Kvm, vcpuFd: u32) !u32 {
        const mmap_size = try k.getVcpuMmapSize();

        const run_ptr = os.mmap(null, mmap_size, os.PROT.READ | os.PROT.WRITE, .{ .TYPE = .SHARED }, @intCast(vcpuFd), 0);
        if (run_ptr == @intFromPtr(std.c.MAP_FAILED)) {
            return Error.IoctlFailed;
        }
        defer _ = os.munmap(@ptrFromInt(run_ptr), mmap_size);
        const run: *volatile kvm.struct_kvm_run = @ptrFromInt(run_ptr);

        _ = try ioctl(@intCast(vcpuFd), kvm.KVM_RUN, 0);

        const reason = run.exit_reason;

        return @intCast(reason);
    }
};

pub const Kvm = struct {
    allocator: std.mem.Allocator,
    kvm_fd: i32,

    pub fn open(
        allocator: std.mem.Allocator,
    ) !Kvm {
        const kfd = os.open("/dev/kvm", .{ .ACCMODE = .RDWR, .EXCL = true }, 0);
        if (@as(isize, @bitCast(kfd)) < 0) {
            return Error.OpenKvmFailed;
        }
        return Kvm{
            .allocator = allocator,
            .kvm_fd = @intCast(kfd),
        };
    }

    pub fn createVm(self: *Kvm) !Vm {
        const ret = try ioctl(@intCast(self.kvm_fd), kvm.KVM_CREATE_VM, 0);
        return Vm{
            .allocator = self.allocator,
            .vm_fd = @intCast(ret),
            .vcpus = [_]u32{0} ** 16,
            .vcpu_count = 0,
            .owned_slices = std.mem.zeroes([8][]u8),
            .owned_count = 0,
        };
    }

    pub fn getVersion(self: *Kvm) !u32 {
        const ret = try ioctl(@intCast(self.kvm_fd), kvm.KVM_GET_API_VERSION, 0);

        return @intCast(ret);
    }

    pub fn getVcpuMmapSize(self: *Kvm) !usize {
        const ret = try ioctl(@intCast(self.kvm_fd), kvm.KVM_GET_VCPU_MMAP_SIZE, 0);
        return @intCast(ret);
    }

    pub fn checkExtension(self: *Kvm, extension: u32) !bool {
        const ret = try ioctl(@intCast(self.kvm_fd), kvm.KVM_CHECK_EXTENSION, @intCast(extension));
        return ret != 0;
    }

    pub fn close(self: *Kvm) !void {
        if (self.kvm_fd != -1) {
            const r = os.close(@intCast(self.kvm_fd));
            if (r != 0) return Error.CloseVmFailed;
            self.kvm_fd = -1;
        }
    }
};
