#!/usr/bin/env bash

ROOT_UID=0
DEST_DIR=
AR=Afterglow-Recolored
ARC=Afterglow-Recolored-Catppuccin
ARD=Afterglow-Recolored-Dracula
ARG=Afterglow-Recolored-Gruvbox
D=dist
DC=dist-cat
DD=dist-dracula
DG=dist-gruvbox

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/$AR-Joris-v2" ]; then rm -r "$DEST_DIR/$AR-Joris-v2"; fi
if [ -d "$DEST_DIR/$AR-Joris2-v2" ]; then rm -r "$DEST_DIR/$AR-Joris2-v2"; fi
if [ -d "$DEST_DIR/$AR-Joris3-v2" ]; then rm -r "$DEST_DIR/$AR-Joris3-v2"; fi
if [ -d "$DEST_DIR/$AR-Joris4-v2" ]; then rm -r "$DEST_DIR/$AR-Joris4-v2"; fi
if [ -d "$DEST_DIR/$AR-Blue-v3" ]; then rm -r "$DEST_DIR/$AR-Blue-v3"; fi
if [ -d "$DEST_DIR/$AR-Purple-v3" ]; then rm -r "$DEST_DIR/$AR-Purple-v3"; fi
if [ -d "$DEST_DIR/$ARC-Blue-v3" ]; then rm -r "$DEST_DIR/$ARC-Blue-v3"; fi
if [ -d "$DEST_DIR/$ARC-Flamingo-v3" ]; then rm -r "$DEST_DIR/$ARC-Flamingo-v3"; fi
if [ -d "$DEST_DIR/$ARC-Green-v3" ]; then rm -r "$DEST_DIR/$ARC-Green-v3"; fi
if [ -d "$DEST_DIR/$ARC-Macchiato-v3" ]; then rm -r "$DEST_DIR/$ARC-Macchiato-v3"; fi
if [ -d "$DEST_DIR/$ARC-Maroon-v3" ]; then rm -r "$DEST_DIR/$ARC-Maroon-v3"; fi
if [ -d "$DEST_DIR/$ARC-Mauve-v3" ]; then rm -r "$DEST_DIR/$ARC-Mauve-v3"; fi
if [ -d "$DEST_DIR/$ARC-Peach-v3" ]; then rm -r "$DEST_DIR/$ARC-Peach-v3"; fi
if [ -d "$DEST_DIR/$ARC-Pink-v3" ]; then rm -r "$DEST_DIR/$ARC-Pink-v3"; fi
if [ -d "$DEST_DIR/$ARC-Red-v3" ]; then rm -r "$DEST_DIR/$ARC-Red-v3"; fi
if [ -d "$DEST_DIR/$ARC-Rosewater-v3" ]; then rm -r "$DEST_DIR/$ARC-Rosewater-v3"; fi
if [ -d "$DEST_DIR/$ARC-Sapphire-v3" ]; then rm -r "$DEST_DIR/$ARC-Sapphire-v3"; fi
if [ -d "$DEST_DIR/$ARC-Sky-v3" ]; then rm -r "$DEST_DIR/$ARC-Sky-v3"; fi
if [ -d "$DEST_DIR/$ARC-Teal-v3" ]; then rm -r "$DEST_DIR/$ARC-Teal-v3"; fi
if [ -d "$DEST_DIR/$ARC-Yellow-v3" ]; then rm -r "$DEST_DIR/$ARC-Yellow-v3"; fi
if [ -d "$DEST_DIR/$ARD-Cyan" ]; then rm -r "$DEST_DIR/$ARD-Cyan"; fi
if [ -d "$DEST_DIR/$ARD-Green" ]; then rm -r "$DEST_DIR/$ARD-Green"; fi
if [ -d "$DEST_DIR/$ARD-Orange" ]; then rm -r "$DEST_DIR/$ARD-Orange"; fi
if [ -d "$DEST_DIR/$ARD-Pink" ]; then rm -r "$DEST_DIR/$ARD-Pink"; fi
if [ -d "$DEST_DIR/$ARD-Purple" ]; then rm -r "$DEST_DIR/$ARD-Purple"; fi
if [ -d "$DEST_DIR/$ARD-Red" ]; then rm -r "$DEST_DIR/$ARD-Red"; fi
if [ -d "$DEST_DIR/$ARD-Teddy" ]; then rm -r "$DEST_DIR/$ARD-Teddy"; fi
if [ -d "$DEST_DIR/$ARD-Yellow" ]; then rm -r "$DEST_DIR/$ARD-Yellow"; fi
if [ -d "$DEST_DIR/$ARG-Aqua" ]; then rm -r "$DEST_DIR/$ARG-Aqua"; fi
if [ -d "$DEST_DIR/$ARG-Black" ]; then rm -r "$DEST_DIR/$ARG-Black"; fi
if [ -d "$DEST_DIR/$ARG-Blue" ]; then rm -r "$DEST_DIR/$ARG-Blue"; fi
if [ -d "$DEST_DIR/$ARG-Gray" ]; then rm -r "$DEST_DIR/$ARG-Gray"; fi
if [ -d "$DEST_DIR/$ARG-Green" ]; then rm -r "$DEST_DIR/$ARG-Green"; fi
if [ -d "$DEST_DIR/$ARG-Mojas84" ]; then rm -r "$DEST_DIR/$ARG-Mojas84"; fi
if [ -d "$DEST_DIR/$ARG-Orange" ]; then rm -r "$DEST_DIR/$ARG-Orange"; fi
if [ -d "$DEST_DIR/$ARG-Purple" ]; then rm -r "$DEST_DIR/$ARG-Purple"; fi
if [ -d "$DEST_DIR/$ARG-White" ]; then rm -r "$DEST_DIR/$ARG-White"; fi

cd $D/

cp -r $D-joris/ $DEST_DIR/$AR-Joris-v2
cp -r $D-joris2/ $DEST_DIR/$AR-Joris2-v2
cp -r $D-joris3/ $DEST_DIR/$AR-Joris3-v2
cp -r $D-joris4/ $DEST_DIR/$AR-Joris4-v2
cp -r $D-blue/ $DEST_DIR/$AR-Blue-v3
cp -r $D-purple/ $DEST_DIR/$AR-Purple-v3
cp -r $DC-blue/ $DEST_DIR/$ARC-Blue-v3
cp -r $DC-flamingo/ $DEST_DIR/$ARC-Flamingo-v3
cp -r $DC-green/ $DEST_DIR/$ARC-Green-v3
cp -r $DC-macchiato/ $DEST_DIR/$ARC-Macchiato-v3
cp -r $DC-maroon/ $DEST_DIR/$ARC-Maroon-v3
cp -r $DC-mauve/ $DEST_DIR/$ARC-Mauve-v3
cp -r $DC-peach/ $DEST_DIR/$ARC-Peach-v3
cp -r $DC-pink/ $DEST_DIR/$ARC-Pink-v3
cp -r $DC-red/ $DEST_DIR/$ARC-Red-v3
cp -r $DC-rosewater/ $DEST_DIR/$ARC-Rosewater-v3
cp -r $DC-sapphire/ $DEST_DIR/$ARC-Sapphire-v3
cp -r $DC-sky/ $DEST_DIR/$ARC-Sky-v3
cp -r $DC-teal/ $DEST_DIR/$ARC-Teal-v3
cp -r $DC-yellow/ $DEST_DIR/$ARC-Yellow-v3
cp -r $DC-sky/ $DEST_DIR/$ARC-Sky-v3
cp -r $DD-cyan/ $DEST_DIR/$ARD-Cyan
cp -r $DD-green/ $DEST_DIR/$ARD-Green
cp -r $DD-orange/ $DEST_DIR/$ARD-Orange
cp -r $DD-pink/ $DEST_DIR/$ARD-Pink
cp -r $DD-purple/ $DEST_DIR/$ARD-Purple
cp -r $DD-red/ $DEST_DIR/$ARD-Red
cp -r $DD-teddy/ $DEST_DIR/$ARD-Teddy
cp -r $DD-yellow/ $DEST_DIR/$ARD-Yellow
cp -r $DG-aqua/ $DEST_DIR/$ARG-Aqua
cp -r $DG-black/ $DEST_DIR/$ARG-Black
cp -r $DG-blue/ $DEST_DIR/$ARG-Blue
cp -r $DG-gray/ $DEST_DIR/$ARG-Gray
cp -r $DG-green/ $DEST_DIR/$ARG-Green
cp -r $DG-mojas84/ $DEST_DIR/$ARG-Mojas84
cp -r $DG-orange/ $DEST_DIR/$ARG-Orange
cp -r $DG-purple/ $DEST_DIR/$ARG-Purple
cp -r $DG-white/ $DEST_DIR/$ARG-White

echo "Finished..."

