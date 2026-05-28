return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					{ "mode", icon = "" },
				},
				lualine_b = {},
				lualine_c = {
					{ "progress", color = { fg = "#939ab7" } },
					{ "location", color = { fg = "#939ab7" } },
					"diagnostics",
				},
				lualine_x = {
					{
						"filetype",
						icon_only = false,
						color = { fg = "#939ab7" },
					},
				},
				lualine_y = {
					"filename",
				},
				lualine_z = {
					{ "branch", icon = "" },
				},
			},
		})
	end,
}
