#!/bin/bash

DIR="$HOME/screenshots"

INPUT=$(for i in "$DIR"/*; do
	echo -en "$i\0icon\x1f$i\n"
done | rofi -dmenu -show-icons -theme-str 'element-icon { size: 256px; } element { orientation: vertical; }')

# OUTPUT=

$INPUT
