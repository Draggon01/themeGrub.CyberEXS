#!/bin/bash

set -e

ISO_OUTPUT="./CyberEXS.iso"
SOURCE_DIR="./"

echo "Removing old ISO (if exists)..."
rm -f "$ISO_OUTPUT"

echo "Generating ISO..."
grub2-mkrescue -o "$ISO_OUTPUT" "$SOURCE_DIR"

echo "Done."
echo "ISO created at: $ISO_OUTPUT"