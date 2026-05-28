#!/usr/bin/env bash

WIPE_OPTION=" 󰃢  Wipe Clipboard"
cache_dir="$HOME/.cache/cliphist/thumbnails"
mkdir -p "$cache_dir"

# Create an empty array to store the IDs in the background
ids=()

# 1. Build the Rofi input string. 
# We add an icon tag to the wipe option to keep the list aligned.
rofi_input="$WIPE_OPTION\0icon\x1fedit-clear-all\n" 

# Read cliphist list line by line (limiting to 50 items so it opens instantly)
while IFS=$'\t' read -r id content; do
    ids+=("$id")
    
    if [[ "$content" == *"[[ binary data"* ]]; then
        # It's an image: Decode and cache it
        img_path="$cache_dir/$id.png"
        if [[ ! -f "$img_path" ]]; then
            cliphist decode "$id" > "$img_path"
        fi
        # Pass the image path to Rofi using the hidden icon tag
        rofi_input+="[Image]\0icon\x1f$img_path\n"
    else
        # It's text: Clean up newlines so it renders nicely in one row
        clean_text=$(echo -n "$content" | tr '\n' ' ' | cut -c 1-100)
        rofi_input+="$clean_text\n"
    fi
done < <(cliphist list | head -n 50)

# 2. Launch Rofi and get the INDEX of the selected row (-format 'i')
selected_index=$(echo -e "$rofi_input" | rofi -dmenu -p "Clipboard" -format 'i' -u 0 -selected-row 1 -theme ~/.config/rofi/clipboard/clipboard.rasi)

# Exit if Escape was pressed
if [[ -z "$selected_index" ]]; then
    exit 0
fi

# 3. Handle Wipe (Index 0 is the Wipe Option)
if [[ "$selected_index" -eq 0 ]]; then
    cliphist wipe
    rm -rf "$cache_dir"/*  # Clean up our thumbnail cache!
    wl-copy -c
    notify-send -t 2000 "Clipboard" "Clipboard wiped successfully"
    exit 0
fi

# 4. Extract actual ID using our background array, Decode, and Auto-Paste
# We subtract 1 because index 0 was our custom Wipe Option
actual_index=$((selected_index - 1))
id="${ids[$actual_index]}"

if [[ -n "$id" ]]; then
    cliphist decode "$id" | wl-copy
    sleep 0.1
    wtype -M ctrl -M shift -P v -s 500 -p v -m shift -m ctrl
fi
