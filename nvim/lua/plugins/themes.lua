return {
	-- Catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
				},
				integrations = {
					lualine = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	-- Rose Pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				dim_inactive_windows = false,
				extend_background_behind_borders = true,
			})
			-- vim.cmd.colorscheme "rose-pine"
		end,
	},

	-- Kanagawa
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				compile = false,
				undercurl = true,
				commentStyle = { italic = true },
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				transparent = false,
				dimInactive = false,
				terminalColors = true,
				theme = "wave",
				background = {
					dark = "wave",
					light = "lotus",
				},
			})
			-- vim.cmd.colorscheme("kanagawa")
		end,
	},

	-- Gruvbox
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = false,
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				undercurl = true,
				underline = true,
				bold = true,
			})
			-- vim.o.background = "dark"
			-- vim.cmd.colorscheme "gruvbox"
		end,
	},

	-- Vague
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("vague")
		end,
	},

	-- Oxocarbon
	{
		"nyoom-engineering/oxocarbon.nvim",
		name = "oxocarbon",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.background = "dark"
			-- vim.cmd.colorscheme("oxocarbon")
		end,
	},

	-- Nordic
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").setup({
				italic_comments = true,
				bold_keywords = true,

				on_palette = function(palette)
					-- palette.dark0 = "#1a1b26" -- (Uncomment and change hex to customize!)
				end,
			})
			-- require("nordic").load()
		end,
	},

	-- Tokyo Night
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night", -- Choices: 'storm', 'moon', 'night', 'day'
			})
			-- vim.cmd.colorscheme("tokyonight")
		end,
	},

	-- Monochrome
	{
		"kdheepak/monochrome.nvim",
		config = function()
			-- vim.cmd.colorscheme("monochrome")
		end,
	},

	-- Acquarium (broken)
	{
		"frenzyexists/aquarium-vim",
		config = function()
			-- vim.cmd.colorscheme("aquarium")
		end,
	},
}
