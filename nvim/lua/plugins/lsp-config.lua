return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "html", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- List of servers you want to configure
			local servers = { "lua_ls", "clangd", "html", "pyright" }

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end

			-- Fixed Keymaps (with correct 'definition' spelling)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
		end,
	},
}
