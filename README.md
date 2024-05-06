# Basic Setup for a C Project Using the Zig Build System

This document provides a basic setup for a C project utilizing the Zig build system. It serves as an introductory guide for individuals who are interested in learning the C language with a user-friendly build system.

## Prerequisites
- Install [Zig](https://ziglang.org/learn/getting-started/#installing-zig)

## Usage

Run the following command to build and run the project:
```shell
zig build run
```

## Project structure
```
.
├── build.zig   # build script
└── src         # source files
    ├── main.c
    ├── lib.h
    └── lib.c
```

!!! note
If you have added or removed files, you need to update the list of files in the `build.zig` file, in the `exe.addCSourceFiles` section:
```diff
exe.addCSourceFiles(.{  
    .files = &.{
        "src/main.c",
        "src/lib.c",
+       "src/another_file.c",
    },
});
```