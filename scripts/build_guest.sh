#!/usr/bin/env bash
set -euo pipefail

OUT=guest.bin
SRC=guest.s

# Try nasm first (produces flat binary directly)
if command -v nasm >/dev/null 2>&1; then
  echo "Using nasm to assemble $SRC -> $OUT"
  nasm -f bin -o "$OUT" "$SRC"
  ls -l "$OUT"
  exit 0
fi

# Fallback: use gcc/ld/objcopy to extract .text
# Assemble with gas (AT&T syntax) - need a different source; fallback to as/nm pipeline
# Here we try gcc to compile to object then objcopy to binary
if command -v gcc >/dev/null 2>&1 && command -v objcopy >/dev/null 2>&1; then
  echo "nasm not found, using gcc+objcopy fallback"
  # create an ELF object using nasm-compatible style via gcc is hard for 16-bit.
  # Prefer installing nasm. But we still attempt a fallback for simple 32/64-bit code.
  echo "Fallback is limited — install 'nasm' for reliable 16-bit binary generation."
  exit 1
fi

echo "Please install 'nasm' (recommended) or set up a suitable assembler toolchain."
exit 1
