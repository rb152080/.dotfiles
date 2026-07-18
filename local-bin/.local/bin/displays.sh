#!/bin/bash

INTERNAL="eDP-1"
EXTERNAL="HDMI-1-0"
MODE="1920x1080"
RATE=60

CHOSEN=$(printf "secondary\nright\nleft\nprimary\nmirror" | rofi -dmenu)

case "$CHOSEN" in
"secondary")
	xrandr --output $EXTERNAL --primary --mode $MODE --rate $RATE --output $INTERNAL --off
	;;
"right")
	xrandr --output $INTERNAL --primary --mode $MODE --rate $RATE --output $EXTERNAL --right-of $INTERNAL --mode $MODE --rate $RATE
	;;
"left")
	xrandr --output $INTERNAL --primary --mode $MODE --rate $RATE --output $EXTERNAL --left-of $INTERNAL --mode $MODE --rate $RATE
	;;
"primary")
	xrandr --output $INTERNAL --primary --mode $MODE --rate $RATE --output $EXTERNAL --off
	;;
"mirror")
	xrandr --output $INTERNAL --primary --mode $MODE --rate $RATE --output $EXTERNAL --same-as $INTERNAL
	;;
esac
