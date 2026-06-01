#!/bin/sh

chosen=$(printf "logout\nlock\nsleep" | rofi -dmenu)

case "$chosen" in
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
