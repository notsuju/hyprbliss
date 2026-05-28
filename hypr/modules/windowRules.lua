-- ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗██████╗ ██╗   ██╗██╗     ███████╗███████╗
-- ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔══██╗██║   ██║██║     ██╔════╝██╔════╝
-- ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗██████╔╝██║   ██║██║     █████╗  ███████╗
-- ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║██╔══██╗██║   ██║██║     ██╔══╝  ╚════██║
-- ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║██║  ██║╚██████╔╝███████╗███████╗███████║
--  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚══════╝

-- Kitty
hl.window_rule({
	match = { class = "kitty" },
	opacity = "1.0 0.8", -- Active Inactive fullscreen
})

-- Ghostty
hl.window_rule({
	match = { class = "com.mitchellh.ghostty" },
	opacity = "1 0.8",
})

-- Zen
-- hl.window_rule({
-- 	match = { class = "zen" },
-- 	opacity = "0.9 0.9 1.0",
-- })

-- 2. Exception: Force 1.0 everywhere if the window title contains "YouTube"
-- hl.window_rule({
-- 	match = {
-- 		class = "zen",
-- 		title = ".*YouTube.*",
-- 	},
-- 	opacity = "1.0 1.0 1.0",
-- })

-- Notes
hl.window_rule({
	match = { class = "marktext" },
	opacity = "0.9",
})

-- Notes
hl.window_rule({
	match = { class = "chrome-excalidraw.com__-Default" },
	opacity = "0.9",
})

-- Brave
hl.window_rule({
	match = { class = "brave-origin-nightly" },
	opacity = "0.9 0.7 1.0",
})

-- Helium
hl.window_rule({
	match = { class = "helium" },
	opacity = "0.9 0.7 1.0",
})

-- Chromium
hl.window_rule({
	match = { class = "chromium" },
	opacity = "0.9 0.7 1.0",
})

-- Nautilus
hl.window_rule({
	match = { class = "org.gnome.Nautilus" },
	opacity = "1 0.8",
	float = true,
	center = true,
	size = { "(monitor_w*0.65)", "(monitor_h*0.65)" },
})

hl.window_rule({
	match = { class = "org.gnome.NautilusPreviewer" },
	float = true,
	center = true,
	size = { "(monitor_w*0.65)", "(monitor_h*0.65)" },
})

-- XWayland Video Bridge
hl.window_rule({
	match = { class = "xwaylandvideobridge" },
	opacity = "0.0 override 0.0 override",
	no_anim = true,
	no_focus = true,
	no_initial_focus = true,
})

-- Steam
hl.window_rule({
	match = { class = "steam" },
	float = true,
	center = true,
	size = { "(monitor_w*0.85)", "(monitor_h*0.75)" },
})

hl.window_rule({
	match = { class = "^steam_app_.*" }, -- For Steam Games to run in fullscreen
	fullscreen = true,
})

-- MPV
hl.window_rule({
	match = { class = "mpv" },
	float = true,
	center = true,
	size = { "(monitor_w*0.65)", "(monitor_h*0.75)" },
})

-- Pavucontrol
hl.window_rule({
	match = { class = "pavucontrol" },
	float = true,
	center = true,
	size = { "(monitor_w*0.45)", "(monitor_h*0.65)" },
})

hl.window_rule({
	match = { class = "org.pulseaudio.pavucontrol" },
	float = true,
	center = true,
	size = { "(monitor_w*0.85)", "(monitor_h*0.75)" },
})

-- Marktext
hl.window_rule({
	match = { class = "marktext" },
	float = true,
	center = true,
	size = { "(monitor_w*0.85)", "(monitor_h*0.85)" },
})

-- Excalidraw
hl.window_rule({
	match = { class = "chrome-excalidraw.com__-Default" },
	float = true,
	center = true,
	size = { "(monitor_w*0.85)", "(monitor_h*0.95)" },
})

-- Waypaper
hl.window_rule({
	match = { class = "waypaper" },
	float = true,
	center = true,
	size = { "(monitor_w*0.65)", "(monitor_h*0.65)" },
})

-- Image Viewer Loupe
hl.window_rule({
	match = { class = "org.gnome.Loupe" },
	float = true,
	center = true,
	pin = true,
	size = { "(monitor_w*0.75)", "(monitor_h*0.75)" },
})

-- Qalculate
hl.window_rule({
	match = { class = "qalculate-gtk" },
	float = true,
	center = true,
	size = { "(monitor_w*0.6)", "(monitor_h*0.6)" },
})

-- Waydroid
hl.window_rule({
	match = { class = "Waydroid" },
	float = true,
	center = true,
	size = { "(monitor_w*0.5)", "(monitor_h*0.95)" },
})

-- LocalSend
hl.window_rule({
	match = { class = "localsend" },
	float = true,
	center = true,
	size = { "(monitor_w*0.4)", "(monitor_h*0.85)" },
})

-- Blueman Manager
hl.window_rule({
	match = { class = "blueman-manager" },
	float = true,
	center = true,
	size = { "(monitor_w*0.35)", "(monitor_h*0.75)" },
})

-- Zen Browser Picture-in-Picture (Multiple match parameters)
hl.window_rule({
	match = { class = "zen", title = "Picture-in-Picture" },
	float = true,
	size = { 748, 500 },
})

-- GTK File Dialogs
hl.window_rule({
	match = { title = "^(Open File)$" },
	float = true,
	center = true,
	size = { 800, 600 },
})

hl.window_rule({ match = { title = "^(Select a File)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose Folder)$" }, float = true })
hl.window_rule({ match = { title = "^(Save As)$" }, float = true })

-- Desktop Portals
hl.window_rule({ match = { class = "^(xdg-desktop-portal-gtk)$" }, float = true })
hl.window_rule({ match = { class = "^(org.freedesktop.impl.portal.desktop.gtk)$" }, float = true })

-- Pyprland
hl.window_rule({ match = { class = "btop-scratchpad" }, border_size = 0 })
hl.window_rule({ match = { class = "rmpc-scratchpad" }, border_size = 0 })
hl.exec_cmd("hyprctl keyword windowrulev2 'animation slide right, class:^(rmpc-scratchpad)$'")
hl.window_rule({ match = { class = "org.pwmt.zathura" }, border_size = 0 })

-- Layer Rules
-- Blurs
hl.layer_rule({ match = { namespace = "logout_dialog" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "swayosd" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "rofi" }, blur = true, ignore_alpha = 0.1 })

-- Swaync Animations
hl.layer_rule({
	name = "notification-animation",
	match = { namespace = "swaync-control-center" },
	animation = "slide top",
})
-- Rofi Animations
hl.layer_rule({
	name = "rofi",
	match = { namespace = "rofi" },
	animation = "slide bottom",
})
