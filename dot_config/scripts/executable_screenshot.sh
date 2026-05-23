#!/bin/bash

# Ensure the screenshots directory exists
mkdir -p "$HOME/Pictures/Screenshots"

# Generate the timestamped filepath
FILE_PATH="$HOME/Pictures/Screenshots/screenshot-$(date '+%Y%m%d-%H%M%S').png"

# Execute grimblast (Freezes screen, copies to clipboard, saves file, and sends notification)
grimblast --notify copysave area "$FILE_PATH"
