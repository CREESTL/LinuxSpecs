-- LSP for multiple languages

return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip"
    },


    config = function()
        local lsp_zero = require('lsp-zero')
        
        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr, preserve_mappings = false})
        end)
        
        -- see :help lsp-zero-guide:integrate-with-mason-nvim
        -- to learn how to use mason.nvim with lsp-zero
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                "tsserver",
                "clangd",
                "eslint",
                "rust_analyzer",
                "solidity",
                "pyright"
            },
            handlers = {
                lsp_zero.default_setup,
            }
        })
        
        -- Preselect 1st option
        local cmp = require('cmp')
        
        cmp.setup({
            preselect = 'item',
            completion = {
                completeopt = 'menu,menuone,noinsert'
            },
        })

        -- Disable virtual text diagnostics
        vim.diagnostic.config(
            {
                virtual_text = false,
            }
        )

        -- Make diagnosticts show in floating window
        vim.o.updatetime = 250
        vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
        -- Switch between diagnostics
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
        -- List all diagnostics
        vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
    end,

}
