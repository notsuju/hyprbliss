return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "clangd", "html", "pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            
            -- New native setup for Lua
            vim.lsp.config('lua_ls', {
                capabilities = capabilities
            })
            vim.lsp.enable('lua_ls')

            -- New native setup for C/C++
            vim.lsp.config('clangd', {
                capabilities = capabilities
            })
            vim.lsp.enable('clangd')

            vim.lsp.config('html', { capabilities = capabilities })
            vim.lsp.enable('html')

            vim.lsp.config('pyright', { capabilities = capabilities })
            vim.lsp.enable('pyright')

            -- Your keymaps remain exactly the same
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
