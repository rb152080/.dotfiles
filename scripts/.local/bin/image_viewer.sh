#!/bin/bash

DIR="$HOME/screenshots"

CHOSEN=$(for i in "$DIR"/*; do
	[ -e "$i" ] || continue
	FILENAME=$(basename "$i")
	echo -en "$FILENAME\0icon\x1f$i\n"
done | rofi -dmenu -show-icons -theme-str 'element-icon { size: 256px; } element { orientation: vertical; }')

if [ -n "$CHOSEN" ]; then
	FULL_PATH="$DIR/$CHOSEN"
	xclip -selection clipboard -t image/png -i "$FULL_PATH"
fi
