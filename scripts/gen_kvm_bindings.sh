#!/usr/bin/env bash
set -euo pipefail

# Generates Zig bindings for linux/kvm.h using `zig translate-c`.
# Output will be written to src/generated_kvm.zig

OUT=src/generated_kvm.zig
mkdir -p "$(dirname "$OUT")"

# Adjust include paths as needed for your system (e.g., /usr/include/x86_64-linux-gnu)
zig translate-c \
  -I/usr/include \
  -I/usr/include/x86_64-linux-gnu \
  /usr/include/linux/kvm.h > "$OUT"

# Keep only useful parts? At minimum you'll find ioctl macros converted to Zig constants

echo "Wrote $OUT"
