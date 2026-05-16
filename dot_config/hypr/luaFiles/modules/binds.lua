-- ██████╗ ██╗███╗   ██╗██████╗ ███████╗
-- ██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
-- ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
-- ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
-- ██████╔╝██║██║ ╚████║██████╔╝███████║
-- ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝

-- KEYBINDS
local mainMod = "SUPER" --(Includes Specific keybinds for Asus Zenbook Duo 14)

-- Hyprland Native
hl.bind(mainMod .. " + N", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + W", hl.dsp.window.close())

-- Scripts
hl.bind("code:248", hl.dsp.exec_cmd("/usr/local/bin/toggle-screen"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("~/.config/hypr/smart-float.sh"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("~/.config/scripts/toggle-nightlight.sh"))
hl.bind("XF86Fn_F", hl.dsp.exec_cmd("~/.config/scripts/toggle-ppd.sh")) -- Fn + F
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("~/.config/scripts/screenshot.sh"))

-- Applications
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind("XF86TouchpadToggle", hl.dsp.exec_cmd("bluemain-manager")) -- Fn + <F6>
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("killall -SIGUSR2 waybar")) -- Restart Waybar
hl.bind("XF86Launch1", hl.dsp.exec_cmd("waypaper")) -- Fn + <F12> Asus Key

-- Rofi & Custom Luanchers
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("~/.config/rofi/clipboard/launcher.sh"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("~/.config/rofi/musicPlayer/music-player.sh"))
hl.bind("SUPER + SHIFT + H", hl.dsp.exec_cmd("~/.config/rofi/shortcuts/shortcuts.sh")) -- Help

-- Power Binds
hl.bind("xf86poweroff", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock")) -- Fn + <F9>

-- Color Picker
hl.bind("ALT + SHIFT + C", hl.dsp.exec_cmd("pkill -SIGUSR1 ie-r"))
hl.bind("ALT + SHIFT + H", hl.dsp.exec_cmd("pkill -SIGUSR2 ie-r"))

-- Volume and Brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --output-volume raise"),
	{ repeating = true, locked = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --output-volume lower"),
	{ repeating = true, locked = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --output-volume mute-toggle"),
	{ locked = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --input-volume mute-toggle"),
	{ locked = true }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --brightness raise"),
	{ repeating = true, locked = true }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd("swayosd-client --monitor eDP-1 --brightness lower"),
	{ repeating = true, locked = true }
)
-- Screenpad Brightness
hl.bind(
	"SHIFT + XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl -d asus_screenpad set 10%+"),
	{ repeating = true, locked = true }
)
hl.bind(
	"SHIFT + XF86MonBrightnessDown",
	hl.dsp.exec_cmd("brightnessctl -d asus_screenpad set 10%-"),
	{ repeating = true, locked = true }
)

-- Plugins
-- hl.bind(mainMod .. " + grave", hl.dsp.exec_cmd("hyprctl dispatch hyprexpo:expo toggle")) (Broken)

-- Pyprland
hl.bind(mainMod .. " + slash", hl.dsp.exec_cmd("pypr toggle cheatsheet"))
hl.bind(mainMod .. " + escape", hl.dsp.exec_cmd("pypr toggle btop"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("pypr toggle rmpc"))
hl.bind(mainMod .. " + tab", hl.dsp.exec_cmd("pypr toggle term"))

-- Move focus
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "d" }))

-- Move windows
hl.bind(mainMod .. " + ALT + h", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + ALT + l", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + ALT + k", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + ALT + j", hl.dsp.window.move({ direction = "d" }))

-- Resize windows
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))

-- Workspaces
for i = 1, 9 do
	hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Mouse move/resize
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Emergency Hard Exit
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())

-- Temporary Hyprshutdown Fix
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd('hyprshutdown --no-exit && hyprctl dispatch "hl.dsp.exit()"'))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("hyprshutdown"))

-- Hardware Switches
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("hyprctl dispatch dpms on"), { locked = true })

-- To be binded
-- bind = , XF86WebCam, exec, notify-send "Webcam toggled"
-- bind = SUPER, P, exec, notify-send "Display toggled"
