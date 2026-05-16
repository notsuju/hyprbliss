#!/usr/bin/env bash

# Grab the active player
player=$(playerctl -l 2>/dev/null | head -n 1)

# Point to your new Pywal theme!
rofi_theme="$HOME/.config/rofi/musicPlayer/music-player.rasi"

title=$(playerctl -p "$player" metadata title)
artist=$(playerctl -p "$player" metadata artist)
album=$(playerctl -p "$player" metadata album)

loop=$(playerctl $player loop)
status=$(playerctl -p "$player" status 2>/dev/null)

# Set the dynamic icons based on current state
play=$([[ "$status" == "Playing" ]] && echo "⏸" || echo "▶")
repeat=$([[ "$loop" == "None" ]] && echo "󰑗" || echo "󰑖")

# The 5 media buttons
options="$repeat\n󰒮\n$play\n󰒭\n"

# Launch Rofi (using the -mesg flag to pass the song title to the theme)
choice=$(echo -e "$options" | rofi -dmenu -theme "$rofi_theme" -mesg "🎵 $title")

# Handle the user's selection
case "$choice" in
    "󰒭")
        playerctl -p "$player" next
        sleep 0.5
        title=$(playerctl -p "$player" metadata title 2>/dev/null)
        artist=$(playerctl -p "$player" metadata artist 2>/dev/null)
        notify-send "🎶 Next Track" "$title — $artist"
    ;;
    "$play")
        playerctl -p "$player" play-pause
    ;;
    "$repeat") 
        if [[ "$loop" == "None" ]]; then
            playerctl "$player" loop Playlist
            notify-send -t 2000 "Repeat Enabled" "Looping Playlist"
        else
            playerctl "$player" loop None
            notify-send -t 2000 "Repeat Disabled" "Looping Off"
        fi
    ;;
    "󰒮")
        playerctl -p "$player" previous
        sleep 0.5
        title=$(playerctl -p "$player" metadata title 2>/dev/null)
        artist=$(playerctl -p "$player" metadata artist 2>/dev/null)
        notify-send "🎶 Previous Track" "$title — $artist"
    ;;
    "")
        notify-send "🎶 $title" "$artist — $album"
    ;;
esac
