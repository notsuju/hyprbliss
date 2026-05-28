-- ██████╗ ███████╗ ██████╗ ██████╗ ██████╗  █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
-- ██╔══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
-- ██║  ██║█████╗  ██║     ██║   ██║██████╔╝███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
-- ██║  ██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
-- ██████╔╝███████╗╚██████╗╚██████╔╝██║  ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
-- ╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

-- 1. Native Lua Pywal Color Parser
local wal_colors = {}
local wal_path = os.getenv("HOME") .. "/.cache/wal/colors-hyprland.conf"
local wal_file = io.open(wal_path, "r")

if wal_file then
	for line in wal_file:lines() do
		local key, val = line:match("%$([%w_]+)%s*=%s*(.+)")
		if key and val then
			wal_colors[key] = val
		end
	end
	wal_file:close()
else
	-- Safe fallbacks if pywal didn't generate the file
	wal_colors = {
		color1 = "rgba(33ccffee)",
		color2 = "rgba(00ff99ee)",
		background = "rgba(595959aa)",
	}
end

-- General Decorations
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 7,
		border_size = 3,
		col = {
			active_border = { colors = { wal_colors.color1, wal_colors.color2 }, angle = 45 },
			inactive_border = wal_colors.background,
		},
		layout = "dwindle",
	},

	decoration = {
		rounding = 6,
		blur = {
			enabled = true,
			size = 6,
			passes = 2,
			new_optimizations = true,
		},
		shadow = {
			enabled = true,
			range = 8,
			render_power = 3,
			color = 0x66000000,
		},
	},

	dwindle = {
		preserve_split = true,
	},
})

-- Enable animations globally
hl.config({
	animations = {
		enabled = true,
	},
})
