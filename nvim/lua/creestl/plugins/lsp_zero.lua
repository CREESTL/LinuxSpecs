-- LSP for multiple languages

return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x", -- 4 is the
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },

    config = function()
        -- Enable Mason to automatically manage LSP servers
        require('mason').setup({})
        require('mason-lspconfig').setup({
            -- List all required LSP servers
            ensure_installed = {
                "clangd",
                "eslint",
                "rust_analyzer",
                "pyright",
                "lua_ls",
            },
            handlers = {
                -- Set up each of installed language servers
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })

        -- This is where you enable features that only work
        -- if there is a language server active in the file
        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function()
                vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>',
                    { desc = "Info about variable under the cursor" })
                vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = "Go to definition" })
                vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { desc = "Go to declaration" })
                vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', { desc = "Go to implementation" })
                vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>',
                    { desc = "Go to type definition" })
                vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', { desc = "List references" })
                vim.keymap.set('n', 'gx', '<cmd>cclose<cr>', { desc = "Close references list" })
                vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>',
                    { desc = "Go to previous diagnostic" })
                vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', { desc = "Go to next diagnostic" })
                vim.keymap.set('n', '<space>e', '<cmd> lua vim.diagnostic.open_float()<cr>',
                    { desc = "Open float diagnostic" })
                vim.keymap.set('n', '<space>q', '<cmd> lua vim.diagnostic.setloclist()<cr>',
                    { desc = "Toggle list of diagnostics" })

                -- Make diagnosticts show in floating window
                vim.o.updatetime = 250
                vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

                vim.diagnostic.config(
                    {
                        virtual_text = true, -- Use virtual text to the right of the string
                        underline = true,    -- Use underline to show exact location of error in code

                        -- Set custom sign icons
                        signs = {
                            text = {
                                [vim.diagnostic.severity.ERROR] = '✘',
                                [vim.diagnostic.severity.WARN] = '▲',
                                [vim.diagnostic.severity.HINT] = '⚑',
                                [vim.diagnostic.severity.INFO] = '»',
                            },
                        },
                    }
                )
            end,
        })


        local lsp_zero = require("lsp-zero")

        -- Fix Undefined global 'vim'
        lsp_zero.configure('lua_ls', {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })
    end,

}
