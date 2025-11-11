//! By convention, root.zig is the root source file when making a library.
const std = @import("std");
const os = std.os.linux;
const ioctl = std.os.linux.ioctl;
pub const kvm = @import("generated_kvm.zig");

// Only provide read-only functions for now.

pub fn getKvmVersion() !u32 {
    const fd = os.open("/dev/kvm", .{ .ACCMODE = .RDONLY }, 0);
    if (@as(isize, @bitCast(fd)) < 0) {
        return error.OpenKvmFailed;
    }
    defer _ = os.close(@intCast(fd));

    const ret = ioctl(@intCast(fd), kvm.KVM_GET_API_VERSION, 0);
    if (@as(isize, @bitCast(ret)) < 0) {
        std.debug.print("ioctl failed with return code: {d}\n", .{
            @as(isize, @bitCast(ret)),
        });
        return error.IoctlFailed;
    }
    return @intCast(ret);
}

pub fn checkExtension(extension: u32) !bool {
    const fd = os.open("/dev/kvm", .{ .ACCMODE = .RDONLY }, 0);
    if (@as(isize, @bitCast(fd)) < 0) {
        return error.OpenKvmFailed;
    }
    defer _ = os.close(@intCast(fd));

    const ret = ioctl(@intCast(fd), kvm.KVM_CHECK_EXTENSION, @intCast(extension));
    if (@as(isize, @bitCast(ret)) < 0) {
        std.debug.print("ioctl failed with return code: {d}\n", .{
            @as(isize, @bitCast(ret)),
        });
        return error.IoctlFailed;
    }
    return ret != 0;
}
