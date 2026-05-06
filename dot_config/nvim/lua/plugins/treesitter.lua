return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
	local config = require("nvim-treesitter.configs")
	config.setup({
        auto_install = true,
		ensure_installed = {"lua", "c", "javascript", "html", "vim", "vimdoc", "query", "cpp", "python", "bash", "kdl", "toml"},
		highlight = { enable = true },
		indent = { enable = true },
	})
	end
}
