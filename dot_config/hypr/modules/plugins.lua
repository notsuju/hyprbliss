-- ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
-- ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
-- ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
-- ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
-- ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
-- ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝

-- Temporarily Broken with lua
-- 1. HyprExpo
-- hl.config({
--     plugin = {
--         hyprexpo = {
--             columns = 2,
--             gap_size = 5,
--             bg_col = "rgb(564321)",
--             workspace_method = "first 1",
--             gesture_distance = 300
--         }
--     }
-- })

-- Dynamic Cursors
hl.config({
	plugin = {
		dynamic_cursors = {

			-- enables the plugin
			enabled = true,

			-- sets the cursor behaviour, supports these values:
			-- tilt    - tilt the cursor based on x-velocity
			-- rotate  - rotate the cursor based on movement direction
			-- stretch - stretch the cursor shape based on direction and velocity
			-- none    - do not change the cursor's behaviour
			mode = "stretch",

			-- smaller values are smoother, but more expensive for hw cursors
			threshold = 2,

			-- for mode = "rotate"
			rotate = {
				-- most realistic if this is your actual cursor size
				length = 26,
				offset = 0.0,
			},

			-- for mode = "tilt"
			tilt = {
				limit = 5000,
				activation = "negative_quadratic",
				window = 100,
				full = 60,
			},

			-- for mode = "stretch"
			stretch = {
				limit = 3000,
				activation = "quadratic",
				window = 100,
			},

			-- configure shake to find
			shake = {

				enabled = true,
				threshold = 6.0,

				base = 4.0,
				speed = 6.0,
				influence = 0.0,

				limit = 0.0,

				timeout = 3000,
				effects = false,
				ipc = false,
			},

			hyprcursor = {

				-- use nearest-neighbour (pixelated) scaling when magnifying beyond texture size
				-- this will also have effect without hyprcursor support being enabled
				-- 0 - never use pixelated scaling
				-- 1 - use pixelated when no highres image
				-- 2 - always use pixelated scaling
				nearest = 1,

				-- enable dedicated hyprcursor support
				enabled = true,

				-- resolution in pixels to load the magnified shapes at
				-- be warned that loading a very high-resolution image will take a long time and might impact memory consumption
				-- -1 means we use [normal cursor size] * [shake:base option]
				resolution = -1,

				-- shape to use when clientside cursors are being magnified
				-- see the shape-name property of shape rules for possible names
				-- specifying clientside will use the actual shape, but will be pixelated
				fallback = "clientside",
			},
		},
	},
})
