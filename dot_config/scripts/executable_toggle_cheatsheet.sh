#!/bin/bash

# Path to your compiled LaTeX PDF
PDF_PATH="/home/suju/.config/pypr/cheatsheet.pdf"

# Check if Zathura is currently running with this specific PDF
if pgrep -f "zathura $PDF_PATH" > /dev/null; then
    # If it's running, kill it (hides the scratchpad)
    pkill -f "zathura $PDF_PATH"
else
    # If it's not running, launch it in the background
    zathura "$PDF_PATH" &
fi
