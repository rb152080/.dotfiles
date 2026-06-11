#!/bin/bash

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

WARNING_LEVEL=25
BATTERY_DISCHARGING=$(acpi -b | grep -c "Discharging")
BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')

if [ "$BATTERY_LEVEL" -le $WARNING_LEVEL ] && [ "$BATTERY_DISCHARGING" -eq 1 ]; then
	notify-send "low battery"
fi
