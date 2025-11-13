# kvm-mini

A tiny learning project: a minimal KVM userspace toy written in Zig. The goal
is to learn how to talk to Linux KVM from Zig, manage VM lifetime, register
guest memory, create vCPUs, and run a simple guest that executes a single HLT
instruction.

This repository is intended as an educational sandbox rather than a
production-ready hypervisor. It demonstrates raw ioctl usage, mmap of the
vCPU run area, and basic register/special-register setup.

Contents
 - `src/root.zig` — Core KVM wrappers and the `Kvm` (factory) and `Vm` types.
 - `src/main.zig` — Minimal example that creates a VM, registers guest memory,
   writes a HLT instruction into guest RAM, creates a vCPU, and runs it.
 - `src/generated_kvm.zig` — Generated KVM bindings (ioctl constants and
   structs). This file is used by the Zig implementation to avoid handwritten
   syscall constants.

Design summary
- `Kvm` — owns the `/dev/kvm` file descriptor and provides factory methods to
  create `Vm` objects and query KVM capabilities.
- `Vm` — owns a VM file descriptor, tracks created vCPU fds and owned guest
  memory slices (allocated via the provided allocator). Exposes helpers to
  register user memory regions and to setup/run vCPUs.

Current status
- Minimal HLT flow implemented: allocate guest memory, write `0xF4` (HLT),
  set regs/sregs, mmap the `kvm_run` area, call `KVM_RUN` and check exit reason.
- IOCTL and mmap logic has been iteratively refactored into methods on `Kvm`
  and `Vm` so `main.zig` remains a short, readable example.
- Some compatibility adjustments were made for different Zig stdlib/toolchain
  behaviors (pointer casts, mmap signatures, MAP flag typing). The repository
  builds in the environment it was developed in; if your Zig version differs,
  you may need small fixes in `root.zig` around casts and `mmap` usage.

How to build and run (local Linux with KVM enabled)

1. Install Zig and ensure you have a modern Linux kernel with /dev/kvm
   accessible. You also need permission to open `/dev/kvm` (run as root or add
   your user to the appropriate group).

2. Build the project:

```bash
cd /path/to/kvm-mini
bash scripts/gen_kvm_bindings.sh

zig build
```

3. Run:

```bash
bash scripts/build_guest.sh
zig build run
```

You should see debug prints including the KVM API version and whether the
vCPU exited with `KVM_EXIT_HLT`.

Notes, caveats and next steps
- This project uses a simple fixed-size arrays for vCPU and owned-slice
  bookkeeping to keep the implementation small and compatible across Zig
  versions. Converting those to `std.ArrayList` is a natural next cleanup.
- For larger or modern examples, consider using `KVM_SET_USER_MEMORY_REGION2`
  with memfd-backed regions (safer and more flexible for large RAM).
- Add a small test harness that asserts the vCPU exit reason, and add CI
  configuration if you want reproducible checks.
- The code purposefully performs raw ioctls and mmap; wrapping or testing
  those paths with a small shim may make the code easier to maintain.

Conversation and development notes
- This repository was developed interactively: the code started with direct
  ioctl usage in `main.zig`. The VM abstraction (`Vm`) and `Kvm` factory were
  introduced to manage lifetime and to allow multiple VMs to be created from a
  single `/dev/kvm` fd. Memory-registration helpers (`registerMemoryRegion`,
  `allocateAndRegister`) and vCPU helpers (`setupState`, `runVcpu`) were added
  and refactored into `root.zig` so that `main.zig` calls high-level methods
  rather than raw syscalls.

License: MIT
