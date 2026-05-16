return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
			},
		})
	end,
}
