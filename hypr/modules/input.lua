hl.config({
	input = {
		kb_layout = "us,us",
		kb_variant = ",dvp",
		kb_model = "",
		kb_options = "caps:escape",
		kb_rules = "",

		resolve_binds_by_sym = false,

		touchpad = {
			natural_scroll = true,
			disable_while_typing = true,
			clickfinger_behavior = true,
			scroll_factor = 0.3,
		},

		accel_profile = "flat",
		sensitivity = 0,
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
