const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        // Name of your program
        .name = "first-program",
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    });

    // Find all C source files in the src/ directory

    exe.addCSourceFiles(.{
        // !!! Important
        // The list of source files that are part of the project. If you add a
        // new source file for your project, or remove an existing one,
        // you need to update this list.
        .files = &.{
            "src/main.c",
            "src/lib.c",
            // 👆 ===> don't include the .h files here
        },
        // Flags to pass to the compiler
        .flags = &.{
            // Compile code according to the ISO C17 standard
            "-std=c17",
            // Enable most compiler warnings to identify common issues
            "-Wall",
            // Enable additional warnings not covered by -Wall
            "-Wextra",
        },
    });

    // Place where the compiler will look for header files
    exe.addIncludePath(.{ .path = "src" });

    b.installArtifact(exe);

    const run_exe = b.addRunArtifact(exe);
    const run_step = b.step("run", "Run the application");

    run_step.dependOn(&run_exe.step);
}
