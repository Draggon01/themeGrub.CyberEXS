#!/bin/bash

set -e

THEME_NAME="CyberEXS"
DEST="boot/grub/themes/$THEME_NAME"

echo "Cleaning old theme directory..."
rm -rf "$DEST"

echo "Creating fresh theme directory..."
mkdir -p "$DEST"

echo "Copying theme files..."

# Background
cp ./../background.png "$DEST/"

# Theme config
cp ./../theme.txt "$DEST/"

# Icons
cp -r ./../icons "$DEST/"

# Fonts
cp ./../*.pf2 "$DEST/" 2>/dev/null || true

# Terminal box images
cp ./../terminal_box_*.png "$DEST/" 2>/dev/null || true

# Selection images
cp ./../select_*.png "$DEST/" 2>/dev/null || true

echo "Done. Fresh theme copied to:"
echo "$DEST"