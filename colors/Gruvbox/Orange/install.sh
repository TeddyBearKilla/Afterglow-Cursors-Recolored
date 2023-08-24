#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/Afterglow-Recolored-Gruvbox-Orange" ]; then
  rm -r "$DEST_DIR/Afterglow-Recolored-Gruvbox-Orange"
fi

cp -pr dist-gruvbox-orange $DEST_DIR/Afterglow-Recolored-Gruvbox-Orange

echo "Finished..."

