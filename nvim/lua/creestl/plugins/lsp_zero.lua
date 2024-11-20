-- LSP for multiple languages

return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },


    config = function()
        local lsp_zero = require('lsp-zero')
        local util = require('lspconfig/util')

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = false })
        end)

        -- see :help lsp-zero-guide:integrate-with-mason-nvim
        -- to learn how to use mason.nvim with lsp-zero
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                "clangd",
                "eslint",
                "rust_analyzer",
                "solidity",
                "pyright"
            },
            handlers = {
                lsp_zero.default_setup,
                -- Custom settings for Pyright server
                require('lspconfig').pyright.setup {
                    root_dir = function(fname)
                        local root_files = {
                            'pyrightconfig.json',
                        }
                        -- 'root_dir' is a directory where pyright starts crawling file tree for packages/modules from.
                        -- Place 'pyrightconfig.json' file to the directory you want pyright to start crawling.
                        -- Usually, this is a root directory of your project
                        return util.root_pattern(unpack(root_files))(fname)
                    end,
                    settings = {
                        python = {
                            analysis = {
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                                diagnosticMode = "workspace"
                            }
                        }
                    }
                }
            },

            -- Set custom signs
            lsp_zero.set_sign_icons({
                error = '✘',
                warn = ' ',
                hint = '⚑',
                info = ' '
            })
        })


        -- Disable virtual text diagnostics
        vim.diagnostic.config(
            {
                virtual_text = false, -- Use floating windows instead
                signs = true,         -- Use signs in sign column
                underline = true      -- Use underline to show exact location of error in code
            }
        )

        -- Make diagnosticts show in floating window
        vim.o.updatetime = 250
        vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { desc = "Open float diagnostic" })
        -- Switch between diagnostics
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next diagnostic" })
        -- List all diagnostics
        vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, { desc = "Toggle list of diagnostics" })
    end,

}
