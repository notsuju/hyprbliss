#!/usr/bin/env bash

# Padded with spaces so it visually aligns with the 4-digit IDs below it!
WIPE_OPTION=" 󰃢     Wipe Clipboard"

# 1. Fetch clipboard, clean up binary tags, and format spacing
list_items=$(cliphist list | awk -F'\t' '{
    text = $2
    if (text ~ /\[\[ binary data.*\]\]/) {
        text = "[Image]"
    }
    print $1 "   " text
}')

# 2. Add the Wipe Option to the top of the list
list_items="${WIPE_OPTION}\n${list_items}"

# 3. Launch Rofi (Notice the -selected-row 1 flag added here!)
selected=$(echo -e "$list_items" | rofi -dmenu -p "Clipboard" -u 0 -selected-row 1 -theme ~/.config/rofi/clipboard/clipboard.rasi)

# Exit if Escaped
if [[ -z "$selected" ]]; then
    exit 0
fi

# 4. Handle Wipe
if [[ "$selected" == "$WIPE_OPTION" ]]; then
    cliphist wipe
    wl-copy -c
    notify-send -t 2000 "Clipboard" "Clipboard wiped successfully"
    exit 0
fi

# 5. Extract ID, Decode, Copy, and Auto-Paste
id=$(echo "$selected" | awk '{print $1}')
if [[ -n "$id" ]]; then
    cliphist decode "$id" | wl-copy
    sleep 0.1
    wtype -M ctrl -M shift -P v -s 500 -p v -m shift -m ctrl
fi
