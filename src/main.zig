const std = @import("std");
const kvm_mini = @import("kvm_mini");

pub fn main() !void {
    const v = try kvm_mini.getKvmVersion();
    std.debug.print("KVM API version: {d}\n", .{v});

    const hasExtension = try kvm_mini.checkExtension(kvm_mini.kvm.KVM_CAP_USER_MEMORY);
    if (hasExtension) {
        std.debug.print("KVM_CAP_USER_MEMORY is supported\n", .{});
    } else {
        std.debug.print("KVM_CAP_USER_MEMORY is NOT supported\n", .{});
    }
}
