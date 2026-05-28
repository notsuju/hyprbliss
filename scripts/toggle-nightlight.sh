#!/bin/bash

if pkill -x wlsunset; then
    notify-send -t 1500 "Night Light" "Disabled ☀️"
else
    wlsunset -l 20.5 -L 78.9 &
    notify-send -t 1500 "Night Light" "Enabled 🌙"
fi
