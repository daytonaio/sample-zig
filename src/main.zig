pub fn fib(n: i64) i64 {
    if (n <= 2) return 1;
    if (n == 3) return 2;
    return fib(n - 1) + fib(n - 2);
}

pub fn main() !void {
    const std = @import("std");

    const timer = std.time.Timer;
    var t = try timer.start();

    const n: i64 = 10;
    const result = fib(n);

    const elapsed = t.read();
    const seconds = @as(f64, @floatFromInt(elapsed)) / std.time.ns_per_s;

    std.debug.print("Time elapsed: {d:.6} seconds\n", .{seconds});
    std.debug.print("fib({}) = {}\n", .{ n, result });
}
