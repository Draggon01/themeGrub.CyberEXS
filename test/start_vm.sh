#!/bin/bash

set -e

ISO="./CyberEXS.iso"

# Stop running QEMU if it exists
if pgrep -x qemu-system-x86_64 > /dev/null; then
    echo "QEMU is already running. Stopping it..."
    pkill -x qemu-system-x86_64
    sleep 1
fi

# Ensure ISO exists
if [ ! -f "$ISO" ]; then
    echo "ISO not found: $ISO"
    echo "Run ./generate_iso.sh first."
    exit 1
fi

echo "Starting QEMU..."

exec qemu-system-x86_64 \
    -cdrom "$ISO" \
    -vga virtio \
    -m 512M \
    -boot d \
    -serial mon:stdio