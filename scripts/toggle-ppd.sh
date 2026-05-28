#!/bin/bash

# Find out what profile is currently running
CURRENT=$(powerprofilesctl get)

# Figure out what the next profile should be
if [ "$CURRENT" = "power-saver" ]; then
    NEXT="balanced"
    ICON="󰓅"
elif [ "$CURRENT" = "balanced" ]; then
    NEXT="performance"
    ICON=""
else
    NEXT="power-saver"
    ICON=""
fi

powerprofilesctl set $NEXT

notify-send -t 1500 "Power Profile" "$ICON  ${NEXT^}"
