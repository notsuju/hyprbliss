#!/bin/bash

# 1. Toggle the floating state first
hyprctl dispatch togglefloating

# 2. Ask Hyprland if the active window is currently floating
if hyprctl activewindow | grep -q "floating: 1"; then
    # 3. If it IS floating, apply the perfect size and center it
    hyprctl dispatch resizeactive exact 65% 75%
    hyprctl dispatch centerwindow
fi
