return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│", -- This is a solid vertical line character
			tab_char = "│",
		},
		scope = {
			enabled = true, -- Highlights the current scope you are in!
			show_start = false,
			show_end = false,
		},
		exclude = {
			filetypes = {
				"help",
				"alpha",
				"dashboard",
				"neo-tree",
				"Trouble",
				"lazy",
				"mason",
			},
		},
	},
}
