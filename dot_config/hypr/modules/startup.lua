-- ███████╗████████╗ █████╗ ██████╗ ████████╗██╗   ██╗██████╗
-- ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║   ██║██╔══██╗
-- ███████╗   ██║   ███████║██████╔╝   ██║   ██║   ██║██████╔╝
-- ╚════██║   ██║   ██╔══██║██╔══██╗   ██║   ██║   ██║██╔═══╝
-- ███████║   ██║   ██║  ██║██║  ██║   ██║   ╚██████╔╝██║
-- ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝

-- STARTUP DAEMONS & APPS
hl.on("hyprland.start", function()
	-- System Environment & Authentication
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("wl-clip-persist --clipboard regular")
	hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")

	-- Plugin Manager
	hl.exec_cmd("hyprpm reload -n")

	-- Core Daemons (Wallpaper, OSD, Night Light)
	hl.exec_cmd("pypr")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("swayosd-server --top-margin 0.97")
	hl.exec_cmd("wlsunset -l 20.5 -L 78.9")

	-- Battery notifications
	hl.exec_cmd("batsignal -n BAT0 -w 30 -c 15")

	-- UI & Applets
	hl.exec_cmd("waybar")
	hl.exec_cmd("nm-applet --indicator")

	-- Waypaper
	hl.exec_cmd("sleep 2 && /home/suju/.local/bin/waypaper --restore")

	-- Japanese Support
	hl.exec_cmd("fcitx5")

	-- Clipboard History
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")

	-- Custom Scripts
	hl.exec_cmd("~/.config/scripts/charger-sound.sh")

	-- Handle the idle daemon
	hl.exec_cmd("killall -q hypridle; hypridle")
end)
