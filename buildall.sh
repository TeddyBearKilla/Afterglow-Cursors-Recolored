#!/bin/bash

function create {
	cd "$SRC"
	mkdir -p x1 x1_25 x1_5 x2

	cd "$SRC"/$1
	find . -name "*.svg" -type f -exec sh -c 'inkscape -o "../x1/${0%.svg}.png" -w 32 -h 32 $0' {} \;
	find . -name "*.svg" -type f -exec sh -c 'inkscape -o "../x1_25/${0%.svg}.png" -w 40 -w 40 $0' {} \;
	find . -name "*.svg" -type f -exec sh -c 'inkscape -o "../x1_5/${0%.svg}.png" -w 48 -w 48 $0' {} \;
	find . -name "*.svg" -type f -exec sh -c 'inkscape -o "../x2/${0%.svg}.png" -w 64 -w 64 $0' {} \;

	cd "$SRC"

	OUTPUT="$BUILD"/cursors
	ALIASES="$SRC"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	fi

	echo -ne "Generating cursor theme...\\r"
	for CUR in config/*.cursor; do
		BASENAME="$CUR"
		BASENAME="${BASENAME##*/}"
		BASENAME="${BASENAME%.*}"

		xcursorgen "$CUR" "$OUTPUT/$BASENAME"
	done
	echo -e "Generating cursor theme... DONE"

	cd "$OUTPUT"

	#generate aliases
	echo -ne "Generating shortcuts...\\r"
	while read ALIAS; do
		FROM="${ALIAS#* }"
		TO="${ALIAS% *}"

		if [ -e $TO ]; then
			continue
		fi
		ln -sr "$FROM" "$TO"
	done < "$ALIASES"
	echo -e "Generating shortcuts... DONE"

	cd "$PWD"

	echo -ne "Generating Theme Index...\\r"
	INDEX="$OUTPUT/../index.theme"
	if [ ! -e "$OUTPUT/../$INDEX" ]; then
		touch "$INDEX"
		echo -e "[Icon Theme]\nName=$THEME\nComment=$THEME Cursor pack.\n" > "$INDEX"
	fi
	echo -e "Generating Theme Index... DONE"
}

# generate pixmaps from svg source
SRC=$PWD/src

cd "$SRC"
cp -r svg joris
cp -r svg joris2
cp -r svg joris3
cp -r svg joris4
cp -r svg blue
cp -r svg gruvbox-purple
cp -r svg purple
cp -r svg cat-blue
cp -r svg cat-flamingo
cp -r svg cat-green
cp -r svg cat-macchiato
cp -r svg cat-maroon
cp -r svg cat-mauve
cp -r svg cat-peach
cp -r svg cat-pink
cp -r svg cat-red
cp -r svg cat-rosewater
cp -r svg cat-sapphire
cp -r svg cat-sky
cp -r svg cat-teal
cp -r svg cat-yellow

# Main Color, Stroke, Accents, Context Menu (Not allowed/Help/Copy/Pencil), Loading BG, Loading Progress

cd "$SRC"/joris && sed -i "s/#111111/#D699b6/g" `ls` && sed -i "s/#222222/#2d353b/g" `ls` && sed -i "s/#333333/#D699b6/g" `ls` && sed -i "s/#444444/#D699b6/g" `ls` && sed -i "s/#555555/#805c6d/g" `ls` && sed -i "s/#666666/#D699b6/g" `ls`

cd "$SRC"/joris2 && sed -i "s/#111111/#05D2AE/g" `ls` && sed -i "s/#222222/#012a23/g" `ls` && sed -i "s/#333333/#69E4CE/g" `ls` && sed -i "s/#444444/#69E4CE/g" `ls` && sed -i "s/#555555/#037e68/g" `ls` && sed -i "s/#666666/#05D2AE/g" `ls`

cd "$SRC"/joris3 && sed -i "s/#111111/#D3C6AA/g" `ls` && sed -i "s/#222222/#4F585E/g" `ls` && sed -i "s/#333333/#e5ddcc/g" `ls` && sed -i "s/#444444/#e5ddcc/g" `ls` && sed -i "s/#555555/#7f7766/g" `ls` && sed -i "s/#666666/#D3C6AA/g" `ls`

cd "$SRC"/joris4 && sed -i "s/#111111/#2D353B/g" `ls` && sed -i "s/#222222/#D699B6/g" `ls` && sed -i "s/#333333/#2D353B/g" `ls` && sed -i "s/#444444/#2D353B/g" `ls` && sed -i "s/#555555/#805c6d/g" `ls` && sed -i "s/#666666/#D699b6/g" `ls`

cd "$SRC"/blue && sed -i "s/#111111/#7786ec/g" `ls` && sed -i "s/#222222/#181b2f/g" `ls` && sed -i "s/#333333/#adb6f4/g" `ls` && sed -i "s/#444444/#adb6f4/g" `ls` && sed -i "s/#555555/#47508e/g" `ls` && sed -i "s/#666666/#7786ec/g" `ls`

cd "$SRC"/gruvbox-purple && sed -i "s/#111111/#B16286/g" `ls` && sed -i "s/#222222/#23141b/g" `ls` && sed -i "s/#333333/#d0a1b6/g" `ls` && sed -i "s/#444444/#d0a1b6/g" `ls` && sed -i "s/#555555/#6a3b50/g" `ls` && sed -i "s/#666666/#B16286/g" `ls`

cd "$SRC"/purple && sed -i "s/#111111/#8a80e0/g" `ls` && sed -i "s/#222222/#1c1a2d/g" `ls` && sed -i "s/#333333/#c1bbfe/g" `ls` && sed -i "s/#444444/#c1bbfe/g" `ls` && sed -i "s/#555555/#534d86/g" `ls` && sed -i "s/#666666/#8a80e0/g" `ls`

cd "$SRC"/cat-blue && sed -i "s/#111111/#89B4FA/g" `ls` && sed -i "s/#222222/#1b2432/g" `ls` && sed -i "s/#333333/#b8d2fc/g" `ls` && sed -i "s/#444444/#b8d2fc/g" `ls` && sed -i "s/#555555/#526c96/g" `ls` && sed -i "s/#666666/#89B4FA/g" `ls`

cd "$SRC"/cat-flamingo && sed -i "s/#111111/#F2CDCD/g" `ls` && sed -i "s/#222222/#302929/g" `ls` && sed -i "s/#333333/#f7e1e1/g" `ls` && sed -i "s/#444444/#f7e1e1/g" `ls` && sed -i "s/#555555/#917b7b/g" `ls` && sed -i "s/#666666/#F2CDCD/g" `ls`

cd "$SRC"/cat-green && sed -i "s/#111111/#A6E3A1/g" `ls` && sed -i "s/#222222/#212d20/g" `ls` && sed -i "s/#333333/#caeec7/g" `ls` && sed -i "s/#444444/#caeec7/g" `ls` && sed -i "s/#555555/#648861/g" `ls` && sed -i "s/#666666/#A6E3A1/g" `ls`

cd "$SRC"/cat-macchiato && sed -i "s/#111111/#24273A/g" `ls` && sed -i "s/#222222/#EFF1F5/g" `ls` && sed -i "s/#333333/#7c7d89/g" `ls` && sed -i "s/#444444/#3a3d4e/g" `ls` && sed -i "s/#555555/#1d1f2e/g" `ls` && sed -i "s/#666666/#EFF1F5/g" `ls`

cd "$SRC"/cat-maroon && sed -i "s/#111111/#EBA0AC/g" `ls` && sed -i "s/#222222/#2f2022/g" `ls` && sed -i "s/#333333/#f3c6cd/g" `ls` && sed -i "s/#444444/#f3c6cd/g" `ls` && sed -i "s/#555555/#8d6067/g" `ls` && sed -i "s/#666666/#EBA0AC/g" `ls`

cd "$SRC"/cat-mauve && sed -i "s/#111111/#cba6f7/g" `ls` && sed -i "s/#222222/#292131/g" `ls` && sed -i "s/#333333/#e0cafa/g" `ls` && sed -i "s/#444444/#e0cafa/g" `ls` && sed -i "s/#555555/#7a6494/g" `ls` && sed -i "s/#666666/#cba6f7/g" `ls`

cd "$SRC"/cat-peach && sed -i "s/#111111/#FAB387/g" `ls` && sed -i "s/#222222/#32241b/g" `ls` && sed -i "s/#333333/#fcd1b7/g" `ls` && sed -i "s/#444444/#fcd1b7/g" `ls` && sed -i "s/#555555/#966b51/g" `ls` && sed -i "s/#666666/#FAB387/g" `ls`

cd "$SRC"/cat-pink && sed -i "s/#111111/#F5C2E7/g" `ls` && sed -i "s/#222222/#31272e/g" `ls` && sed -i "s/#333333/#f9daf1/g" `ls` && sed -i "s/#444444/#f9daf1/g" `ls` && sed -i "s/#555555/#93748b/g" `ls` && sed -i "s/#666666/#F5C2E7/g" `ls`

cd "$SRC"/cat-red && sed -i "s/#111111/#F38BA8/g" `ls` && sed -i "s/#222222/#311c22/g" `ls` && sed -i "s/#333333/#f8b9cb/g" `ls` && sed -i "s/#444444/#f8b9cb/g" `ls` && sed -i "s/#555555/#925365/g" `ls` && sed -i "s/#666666/#F38BA8/g" `ls`

cd "$SRC"/cat-rosewater && sed -i "s/#111111/#f5e0dc/g" `ls` && sed -i "s/#222222/#322529/g" `ls` && sed -i "s/#333333/#f9ecea/g" `ls` && sed -i "s/#444444/#f9ecea/g" `ls` && sed -i "s/#555555/#938684/g" `ls` && sed -i "s/#666666/#f5e0dc/g" `ls`

cd "$SRC"/cat-sapphire && sed -i "s/#111111/#73C6EB/g" `ls` && sed -i "s/#222222/#17282f/g" `ls` && sed -i "s/#333333/#abddf3/g" `ls` && sed -i "s/#444444/#abddf3/g" `ls` && sed -i "s/#555555/#45778d/g" `ls` && sed -i "s/#666666/#73C6EB/g" `ls`

cd "$SRC"/cat-sky && sed -i "s/#111111/#89DCEB/g" `ls` && sed -i "s/#222222/#1b2c2f/g" `ls` && sed -i "s/#333333/#b8eaf3/g" `ls` && sed -i "s/#444444/#b8eaf3/g" `ls` && sed -i "s/#555555/#52848d/g" `ls` && sed -i "s/#666666/#89DCEB/g" `ls`

cd "$SRC"/cat-teal && sed -i "s/#111111/#94E2D5/g" `ls` && sed -i "s/#222222/#1e2d2b/g" `ls` && sed -i "s/#333333/#bfeee6/g" `ls` && sed -i "s/#444444/#bfeee6/g" `ls` && sed -i "s/#555555/#598880/g" `ls` && sed -i "s/#666666/#94E2D5/g" `ls`

cd "$SRC"/cat-yellow && sed -i "s/#111111/#F9E2AF/g" `ls` && sed -i "s/#222222/#322d23/g" `ls` && sed -i "s/#333333/#fbeecf/g" `ls` && sed -i "s/#444444/#fbeecf/g" `ls` && sed -i "s/#555555/#958869/g" `ls` && sed -i "s/#666666/#F9E2AF/g" `ls`

THEME="Afterglow Joris"
BUILD="$SRC/../dist/dist-joris"
create joris
echo Afterglow Joris Done...

THEME="Afterglow Joris 2"
BUILD="$SRC/../dist/dist-joris2"
create joris2
echo Afterglow Joris 2 Done...

THEME="Afterglow Joris 3"
BUILD="$SRC/../dist/dist-joris3"
create joris3
echo Afterglow Joris 3 Done...

THEME="Afterglow Joris 4"
BUILD="$SRC/../dist/dist-joris4"
create joris4
echo Afterglow Joris 4 Done...

THEME="Afterglow Blue v2"
BUILD="$SRC/../dist/dist-blue"
create blue
echo Afterglow Blue v2 Done...

THEME="Afterglow Gruvbox Purple"
BUILD="$SRC/../dist/dist-gruvbox-purple"
create gruvbox-purple
echo Afterglow Gruvbox Purple Done...

THEME="Afterglow Purple v2"
BUILD="$SRC/../dist/dist-purple"
create purple
echo Afterglow Purple v2 Done...

THEME="Afterglow Catppuccin Blue v2"
BUILD="$SRC/../dist/dist-cat-blue"
create cat-blue
echo Afterglow Catppuccin Blue v2 Done...

THEME="Afterglow Catppuccin Flamingo v2"
BUILD="$SRC/../dist/dist-cat-flamingo"
create cat-flamingo
echo Afterglow Catppuccin Flamingo v2 Done...

THEME="Afterglow Catppuccin Green v2"
BUILD="$SRC/../dist/dist-cat-green"
create cat-green
echo Afterglow Catppuccin Green v2 Done...

THEME="Afterglow Catppuccin Macchiato v2"
BUILD="$SRC/../dist/dist-cat-macchiato"
create cat-macchiato
echo Afterglow Catppuccin Macchiato v2 Done...

THEME="Afterglow Catppuccin Maroon v2"
BUILD="$SRC/../dist/dist-cat-maroon"
create cat-maroon
echo Afterglow Catppuccin Maroon v2 Done...

THEME="Afterglow Catppuccin Mauve v2"
BUILD="$SRC/../dist/dist-cat-mauve"
create cat-mauve
echo Afterglow Catppuccin Mauve v2 Done...

THEME="Afterglow Catppuccin Peach v2"
BUILD="$SRC/../dist/dist-cat-peach"
create cat-peach
echo Afterglow Catppuccin Peach v2 Done...

THEME="Afterglow Catppuccin Pink v2"
BUILD="$SRC/../dist/dist-cat-pink"
create cat-pink
echo Afterglow Catppuccin Pink v2 Done...

THEME="Afterglow Catppuccin Red v2"
BUILD="$SRC/../dist/dist-cat-red"
create cat-red
echo Afterglow Catppuccin Red v2 Done...

THEME="Afterglow Catppuccin Rosewater v2"
BUILD="$SRC/../dist/dist-cat-rosewater"
create cat-rosewater
echo Afterglow Catppuccin Rosewater v2 Done...

THEME="Afterglow Catppuccin Sapphire v2"
BUILD="$SRC/../dist/dist-cat-sapphire"
create cat-sapphire
echo Afterglow Catppuccin Sapphire v2 Done...

THEME="Afterglow Catppuccin Sky v2"
BUILD="$SRC/../dist/dist-cat-sky"
create cat-sky
echo Afterglow Catppuccin Sky v2 Done...

THEME="Afterglow Catppuccin Teal v2"
BUILD="$SRC/../dist/dist-cat-teal"
create cat-teal
echo Afterglow Catppuccin Teal v2 Done...

THEME="Afterglow Catppuccin Yellow v2"
BUILD="$SRC/../dist/dist-cat-yellow"
create cat-yellow
echo Afterglow Catppuccin Yellow v2 Done...

cd "$SRC"
rm -rf joris joris2 joris3 joris4 blue gruvbox-purple purple cat-blue cat-flamingo cat-green cat-macchiato cat-maroon cat-mauve cat-peach cat-pink cat-red cat-rosewater cat-sapphire  cat-sky cat-teal cat-yellow x1 x1_25 x1_5 x2
echo All cursors exported to the dist/ directory!
