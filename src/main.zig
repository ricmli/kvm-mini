const std = @import("std");
const kvm_mini = @import("kvm_mini");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    var k = try kvm_mini.Kvm.open(allocator);
    defer k.close() catch {};

    const v = try k.getVersion();
    std.debug.print("KVM API version from Kvm struct: {d}\n", .{v});

    const hasExtension = try k.checkExtension(kvm_mini.kvm.KVM_CAP_USER_MEMORY);
    std.debug.print("KVM_CAP_USER_MEMORY supported: {s}\n", .{if (hasExtension) "yes" else "no"});

    var vm = try k.createVm();
    defer vm.close() catch {};

    std.debug.print("Created KVM fd: {d} VM fd: {d}\n", .{ k.kvm_fd, vm.vm_fd });

    const vcpuFd = try vm.createVcpu(0);
    std.debug.print("Created VCPU with fd: {d}\n", .{vcpuFd});

    const buf = try vm.allocateAndRegister(0, 0x1000, 1024 * 1024);
    std.debug.print("Allocated and registered memory at address: 0x{x}, size : {}\n", .{ @intFromPtr(buf.ptr), buf.len });

    // vm.close() will close vcpus and vm fds; k.close() will close the /dev/kvm fd
}
