-- lua/keymaps.lua

-- Set your leader key (usually Space)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- ==========================================
-- Core Editor Shortcuts
-- ==========================================

-- Clear search highlights on Escape
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Better window navigation (use Ctrl + hjkl to move between split windows)
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Save file without reaching for Escape -> :w (Ctrl + S)
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- ==========================================
-- Custom Functions
-- ==========================================

-- Theme Cycler (leader + t + h)
local my_themes = {
	"catppuccin",
	"rose-pine",
	"kanagawa",
	"gruvbox",
	"oxocarbon",
	"vague",
	"nordic",
	"tokyonight",
	"monochrome",
	"aquarium",
}
local current_theme_idx = 1

map("n", "<leader>th", function()
	current_theme_idx = (current_theme_idx % #my_themes) + 1
	local next_theme = my_themes[current_theme_idx]
	vim.cmd("colorscheme " .. next_theme)
	vim.notify("Theme switched to: " .. next_theme, vim.log.levels.INFO)
end, { desc = "Cycle Themes" })
