#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/Afterglow-Recolored-Dracula-Purple" ]; then
  rm -r "$DEST_DIR/Afterglow-Recolored-Dracula-Purple"
fi

cp -pr dist-dracula-purple $DEST_DIR/Afterglow-Recolored-Dracula-Purple

echo "Finished..."

