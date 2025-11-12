//! By convention, root.zig is the root source file when making a library.
const std = @import("std");
const os = std.os.linux;
const ioctl = std.os.linux.ioctl;
pub const kvm = @import("generated_kvm.zig");

pub const Error = error{
    OpenKvmFailed,
    IoctlFailed,
    CloseVmFailed,
    CloseVcpuFailed,
};

pub const Vm = struct {
    allocator: std.mem.Allocator,
    vm_fd: i32,
    vcpus: [16]u32,
    vcpu_count: usize,
    owned_slices: [8][]u8,
    owned_count: usize,

    pub fn createVcpu(self: *Vm, vcpuId: u32) !u32 {
        const ret = ioctl(@intCast(self.vm_fd), kvm.KVM_CREATE_VCPU, @intCast(vcpuId));
        if (@as(isize, @bitCast(ret)) < 0) {
            return Error.IoctlFailed;
        }
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

        const ret = ioctl(@intCast(self.vm_fd), kvm.KVM_SET_USER_MEMORY_REGION, @intFromPtr(&region));
        if (@as(isize, @bitCast(ret)) < 0) {
            return Error.IoctlFailed;
        }
    }

    pub fn allocateAndRegister(self: *Vm, slot: u32, guest_phys_addr: u64, size: usize) ![]u8 {
        const buf = try self.allocator.alloc(u8, size);
        // zero the memory for safety
        @memset(buf, 0);

        try self.registerMemoryRegion(slot, guest_phys_addr, buf);

        if (self.owned_count >= self.owned_slices.len) {
            // no room to track ownership; free and return error
            self.allocator.free(buf);
            return Error.IoctlFailed;
        }
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
};

pub const Kvm = struct {
    allocator: std.mem.Allocator,
    kvm_fd: i32,

    pub fn open(
        allocator: std.mem.Allocator,
    ) !Kvm {
        const kfd = os.open("/dev/kvm", .{ .ACCMODE = .RDONLY }, 0);
        if (@as(isize, @bitCast(kfd)) < 0) {
            return Error.OpenKvmFailed;
        }
        return Kvm{
            .allocator = allocator,
            .kvm_fd = @intCast(kfd),
        };
    }

    pub fn createVm(self: *Kvm) !Vm {
        const ret = ioctl(@intCast(self.kvm_fd), kvm.KVM_CREATE_VM, 0);
        if (@as(isize, @bitCast(ret)) < 0) {
            return Error.IoctlFailed;
        }
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
        const ret = ioctl(@intCast(self.kvm_fd), kvm.KVM_GET_API_VERSION, 0);
        if (@as(isize, @bitCast(ret)) < 0) {
            return Error.IoctlFailed;
        }
        return @intCast(ret);
    }

    pub fn checkExtension(self: *Kvm, extension: u32) !bool {
        const ret = ioctl(@intCast(self.kvm_fd), kvm.KVM_CHECK_EXTENSION, @intCast(extension));
        if (@as(isize, @bitCast(ret)) < 0) {
            return Error.IoctlFailed;
        }
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
