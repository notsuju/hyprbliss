#!/usr/bin/env bash

choices=$(cat <<EOF
⌘ + Z             ⟹ Toggle rmpc
⌘ + Tab           ⟹ Floating Terminal
⌘ + ⇧ + V         ⟹ Clipboard
⌥ + ⇧ + C         ⟹ Color Picker
⌘ + Q             ⟹ Terminal
Fn + F8           ⟹ Night Light
⌘ + Q             ⟹ Kill Active Window
⌘ + S             ⟹ Toggle Floating
Fn + F            ⟹ Switch PowerProfiles
⌘ + [⎵]           ⟹ Rofi App Launcher
⌘ + ⇧ + F4/F5     ⟹ Brightness Up/Down Screenpad
⌘ + ⇧ + B         ⟹ Restart Waybar
⌘ + Escape        ⟹ Task Manager
EOF
)

# Launch Rofi with the new theme
echo "$choices" | rofi -dmenu -i -p "Shortcuts" -theme "$HOME/.config/rofi/shortcuts/shortcuts.rasi"
