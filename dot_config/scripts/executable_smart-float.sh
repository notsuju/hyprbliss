#!/bin/bash

if hyprctl activewindow | grep -q "floating: 0"; then
    # It is tiled. Toggle it to float!
    hyprctl dispatch 'hl.dsp.window.float({ action = "toggle" })'
    
    # Pause for 50ms so Hyprland has time to register the state change
    sleep 0.05
    
    # 2. Get the exact pixel dimensions of the currently focused monitor
    WIDTH=$(hyprctl monitors -j | jq '.[] | select(.focused == true) | .width')
    HEIGHT=$(hyprctl monitors -j | jq '.[] | select(.focused == true) | .height')
    
    # 3. Calculate 65% width and 75% height as raw integers
    NEW_W=$(awk "BEGIN {print int($WIDTH * 0.65)}")
    NEW_H=$(awk "BEGIN {print int($HEIGHT * 0.75)}")
    
    # 4. Feed the exact pixel numbers to the strict Lua dispatcher
    hyprctl dispatch "hl.dsp.window.resize({ x = $NEW_W, y = $NEW_H })"
    
    # 5. Center the window using the proper new API
    hyprctl dispatch 'hl.dsp.window.center()'
else
    # It is already floating. Toggle it back to tiled!
    hyprctl dispatch 'hl.dsp.window.float({ action = "toggle" })'
fi
