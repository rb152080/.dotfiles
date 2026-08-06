#!/bin/bash
# power.sh

CHOSEN=$(printf "logout\nlock\nsleep" | rofi -dmenu)

case "$CHOSEN" in
"logout")
	i3-msg exit
	;;
"lock")
	loginctl lock-session
	;;
"sleep")
	systemctl suspend
	;;
esac
