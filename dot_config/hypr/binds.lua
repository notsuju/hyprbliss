-- BINDS
-- System Binds
hl.bind("SUPER + S", hl.dsp.exec_cmd("~/.config/hypr/smart-float.sh"))
hl.bind("SUPER + N", hl.dsp.pseudo())
hl.bind("SUPER + W", hl.dsp.killactive())
hl.bind("code:248", hl.dsp.exec_cmd("/usr/local/bin/toggle-screen"))


-- Important System Programs
hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + Escape", hl.dsp.exec_cmd("wlogout"))
hl.bind("code:75", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("killall -SIGUSR2 waybar")) -- Restart Waybar
hl.bind("code:156", hl.dsp.exec_cmd("waypaper")) -- Asus key

-- Color Picker
hl.bind("ALT + SHIFT + C", hl.dsp.exec_cmd("pkill -SIGUSR1 ie-r"))
hl.bind("ALT + SHIFT + H", hl.dsp.exec_cmd("pkill -SIGUSR2 ie-r"))

-- Rofi
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("rofi --show drun"))
hl.bind("ALT + V", hl.dsp.exec_cmd([[bash -c "cliphist list | rofi -dmenu -p 'Clipboard' | cliphist decode | wl-copy"]]))

-- Applications
hl.bind("SUPER + F", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("thunar"))

-- Screenshots
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd([[sh -c 'grim -g "$(slurp)" - | swappy -f - > /dev/null']]))

-- Volume and Brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --output-volume raise"), { reapeating = true, locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --output-volume lower"), { repeating = true, locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --output-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --input-volume mute-toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --brightness raise"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --brightness lower"), { repeating = true, locked = true })

hl.bind("SHIFT + XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -d asus_screenpad set 5%+"), { repeating = true, locked = true })
hl.bind("SHIFT + XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d asus_screenpad set 5%-"), { repeating = true, locked = true })

-- Plugins
hl.bind("SUPER + grave", hl.dsp.exec_cmd("hyprctl dispatch hyprexpo:expo toggle"))
hl.bind("SUPER + return", hl.dsp.exec_cmd("pypr toggle term"))
hl.bind("SUPER + slash", hl.dsp.exec_cmd("pypr toggle cheatsheet"))
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("pypr toggle btop"))

-- Move focus
hl.bind("SUPER + h", hl.dsp.movefocus("l"))
hl.bind("SUPER + l", hl.dsp.movefocus("r"))
hl.bind("SUPER + k", hl.dsp.movefocus("u"))
hl.bind("SUPER + j", hl.dsp.movefocus("d"))

-- Move windows
hl.bind("SUPER + ALT + h", hl.dsp.movewindow("l"))
hl.bind("SUPER + ALT + l", hl.dsp.movewindow("r"))
hl.bind("SUPER + ALT + k", hl.dsp.movewindow("u"))
hl.bind("SUPER + ALT + j", hl.dsp.movewindow("d"))

-- Resize windows
hl.bind("SUPER + SHIFT + h", hl.dsp.resizeactive("-100 0"))
hl.bind("SUPER + SHIFT + l", hl.dsp.resizeactive("100 0"))
hl.bind("SUPER + SHIFT + k", hl.dsp.resizeactive("0 -100"))
hl.bind("SUPER + SHIFT + j", hl.dsp.resizeactive("0 100"))

-- Cycle through existing windows
hl.bind("ALT + Tab", hl.dsp.cyclenext())
hl.bind("ALT + Tab", hl.dsp.bringactivetotop())

-- Workspaces
for i = 1, 9 do
    hl.bind("SUPER + " .. i, hl.dsp.workspace(tostring(i)))
    hl.bind("SUPER + SHIFT + " .. i, hl.dsp.movetoworkspace(tostring(i)))
end

hl.bind("SUPER + 0", hl.dsp.workspace("10"))
hl.bind("SUPER + SHIFT + 0", hl.dsp.movetoworkspace("10"))
hl.bind("SUPER + mouse_down", hl.dsp.workspace("e+1"))
hl.bind("SUPER + mouse_up", hl.dsp.workspace("e-1"))

-- Mouse move/resize
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Emergency Hard Exit
hl.bind("SUPER + SHIFT + E", hl.dsp.exit())

-- Hardware Switches
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("hyprctl dispatch dpms on"), { locked = true })

-- Exec-once
hl.config({
    exec_once = {
        "fcitx5"
    }
})
