const std = @import("std");
const kvm_mini = @import("kvm_mini");

fn loadGuestBinary(guest_buf: []u8, path: []const u8) !usize {
    var file = try std.fs.cwd().openFile(path, .{});
    defer file.close();

    const n = try file.read(guest_buf);
    if (n == 0) {
        return error.EmptyFile;
    }

    return n;
}

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

    // Write a single HLT instruction at guest physical 0x1000
    buf[0] = 0xF4; // HLT opcode

    // Setup registers and segment state for the vCPU
    try vm.setupState(vcpuFd, 0x1000, 0x2000);

    // Run the vCPU (ioctl/mmap encapsulated by Vm.runVcpu)
    const reason = try vm.runVcpu(&k, vcpuFd);

    if (reason == kvm_mini.kvm.KVM_EXIT_HLT) {
        std.debug.print("vCPU exited with HLT (reason={d}) - success\n", .{reason});
    } else {
        std.debug.print("vCPU exited with reason: {d}\n", .{reason});
    }

    const loaded = try loadGuestBinary(buf, "guest.bin");
    std.debug.print("Loaded guest binary of size: {d} bytes\n", .{loaded});

    try vm.setupState(vcpuFd, 0x1000, 0x2000);
    // Run the vCPU (ioctl/mmap encapsulated by Vm.runVcpu)
    const reason2 = try vm.runVcpu(&k, vcpuFd);
    std.debug.print("Second vCPU run exited with reason: {d}\n", .{reason2});

    // vm.close() will close vcpus and vm fds; k.close() will close the /dev/kvm fd
}
