#!/bin/bash
# displays.sh

INTERNAL="eDP-1"
INTERNAL_MODE="1920x1080"
INTERNAL_RATE=60

EXTERNAL="DP-1-0"
EXTERNAL_MODE="3840x2560"
EXTERNAL_RATE=120

CHOSEN=$(printf "secondary\nright\nleft\nprimary\nmirror" | rofi -dmenu)

case "$CHOSEN" in
"secondary")
	xrandr --output $EXTERNAL --primary --mode $EXTERNAL_MODE --rate $EXTERNAL_RATE --output $INTERNAL --off
	;;
"right")
	xrandr --output $INTERNAL --primary --mode $INTERNAL_MODE --rate $INTERNAL_RATE --output $EXTERNAL --right-of $INTERNAL --mode $EXTERNAL_MODE --rate $EXTERNAL_RATE
	;;
"left")
	xrandr --output $INTERNAL --primary --mode $INTERNAL_MODE --rate $INTERNAL_RATE --output $EXTERNAL --left-of $INTERNAL --mode $EXTERNAL_MODE --rate $EXTERNAL_RATE
	;;
"primary")
	xrandr --output $INTERNAL --primary --mode $INTERNAL_MODE --rate $INTERNAL_RATE --output $EXTERNAL --off
	;;
"mirror")
	xrandr --output $INTERNAL --primary --mode $INTERNAL_MODE --rate $INTERNAL_RATE --output $EXTERNAL --mode $EXTERNAL_MODE --rate $EXTERNAL_RATE
	;;
esac
