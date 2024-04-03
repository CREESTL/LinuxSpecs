-- Autocompletion

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        "hrsh7th/cmp-nvim-lsp", -- source for LSP
        "hrsh7th/cmp-cmdline", -- source for command line
        "hrsh7th/cmp-nvim-lua", -- source lua code
        "onsails/lspkind.nvim", -- vs-code like pictograms
    },
    config = function()
        local cmp = require("cmp")

        local lspkind = require("lspkind")

        cmp.setup({
            completion = {
                -- Preselect 1st option
                preselect = 'item',
                completeopt = "menu,menuone,noinsert",
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm(), -- autoselect 1st option
            }),
            -- Sources for autocompletion that work by default
            sources = cmp.config.sources({
                { name = "buffer" }, 
                { name = "path" },
                { name = "nvim_lsp" },
                { name = "nvim_lua"}
            }),
            --  Change sources of completion for ':' command
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                -- Use this source only in command line mode
                sources = {
                    { name = 'cmdline' },
                }
            }),
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })
    end,
}
