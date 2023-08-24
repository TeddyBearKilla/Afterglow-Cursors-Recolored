#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/Afterglow-Recolored-Gruvbox-White" ]; then
  rm -r "$DEST_DIR/Afterglow-Recolored-Gruvbox-White"
fi

cp -pr dist-gruvbox-white $DEST_DIR/Afterglow-Recolored-Gruvbox-White

echo "Finished..."

