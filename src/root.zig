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
    vm_fd: i32,
    vcpus: [16]u32,
    vcpu_count: usize,

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

    pub fn close(self: *Vm) !void {
        // close vcpus
        for (self.vcpus[0..self.vcpu_count]) |fd| {
            _ = os.close(@intCast(fd));
        }

        if (self.vm_fd != -1) {
            const r = os.close(@intCast(self.vm_fd));
            if (r != 0) return Error.CloseVmFailed;
            self.vm_fd = -1;
        }
    }
};

pub const Kvm = struct {
    allocator: *const std.mem.Allocator,
    kvm_fd: i32,

    pub fn open(allocator: *const std.mem.Allocator) !Kvm {
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
            .vm_fd = @intCast(ret),
            .vcpus = [_]u32{0} ** 16,
            .vcpu_count = 0,
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
