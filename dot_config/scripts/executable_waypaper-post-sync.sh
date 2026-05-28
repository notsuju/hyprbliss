#!/bin/bash

notify-send -t 2400 "Wal Change" "Theme changed successfully"
sleep 1
wal -q -n -i "$1"
swaync-client -rs
killall -SIGUSR2 waybar
~/.local/bin/btop-pywal.sh
killall swayosd-server
swayosd-server --top-margin 0.99 & disown
