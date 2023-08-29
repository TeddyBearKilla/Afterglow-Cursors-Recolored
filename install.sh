#!/bin/bash

ROOT_UID=0
DEST_DIR=
AR=Afterglow-Recolored
D=dist

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/$AR-Purple-v3" ]; then rm -r "$DEST_DIR/$AR-Purple-v3"; fi

cd $D/

cp -r $D-purple/ $DEST_DIR/$AR-Purple-v3

echo "Finished..."

