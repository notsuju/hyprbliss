#!/bin/bash

notify-send -t 2000 "Wal Change" "Wallpaper changed successfully"
sleep 1
wal -q -n -i "$1"
swaync-client -rs
killall -SIGUSR2 waybar
~/.local/bin/btop-pywal.sh
killall swayosd-server
swayosd-server --style ~/.cache/wal/swayosd.css --top-margin 0.95 & disown
