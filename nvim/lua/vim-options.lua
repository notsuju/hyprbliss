-- vim.opt.number = true
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
--vim.opt.cursorlineopt = "number" -- Uncomment to remove Line highlighting

vim.opt.updatetime = 100
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Force comments to be italic regardless of the active colorscheme
-- vim.api.nvim_create_autocmd("ColorScheme", {
-- pattern = "*",
--     callback = function()
--         -- Grab the current theme's comment color
--         local hl = vim.api.nvim_get_hl(0, { name = "Comment" })
--         -- Reapply it, but add the italic flag
--         vim.api.nvim_set_hl(0, "Comment", { fg = hl.fg, bg = hl.bg, italic = true })
--     end,
-- })
