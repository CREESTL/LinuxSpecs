return {
    -- This plugin consists of 30+ smaller ones. Each must be set up individually.
    'echasnovski/mini.nvim',
    version = false,
    config = function()
        -- Move with brackets
        -- Draw vertical line in current scope
        require("mini.bracketed").setup(
            {
                -- First-level elements are tables describing behavior of a target:
                --
                -- - <suffix> - single character suffix. Used after `[` / `]` in mappings.
                --   For example, with `b` creates `[B`, `[b`, `]b`, `]B` mappings.
                --   Supply empty string `''` to not create mappings.
                --
                -- - <options> - table overriding target options.
                --
                -- See `:h MiniBracketed.config` for more info.

                buffer     = { suffix = 'b', options = {} },
                comment    = { suffix = 'c', options = {} },
                conflict   = { suffix = 'x', options = {} },
                diagnostic = { suffix = 'd', options = {} },
                file       = { suffix = 'f', options = {} },
                indent     = { suffix = 'i', options = {} },
                jump       = { suffix = 'j', options = {} },
                location   = { suffix = 'l', options = {} },
                oldfile    = { suffix = 'o', options = {} },
                quickfix   = { suffix = 'q', options = {} },
                treesitter = { suffix = 't', options = {} },
                undo       = { suffix = 'u', options = {} },
                window     = { suffix = 'w', options = {} },
                yank       = { suffix = 'y', options = {} },
            }

        )
        -- Move any selection in any direction
        require("mini.move").setup(
            {
                -- Module mappings. Use `''` (empty string) to disable one.
                mappings = {
                    -- 'M' is ALT key
                    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                    left = '<M-h>',
                    right = '<M-l>',
                    down = '<M-j>',
                    up = '<M-k>',

                    -- Move current line in Normal mode
                    line_left = '<M-h>',
                    line_right = '<M-l>',
                    line_down = '<M-j>',
                    line_up = '<M-k>',
                },

                -- Options which control moving behavior
                options = {
                    -- Automatically reindent selection during linewise vertical move
                    reindent_linewise = true,
                },
            }
        )
    end
}
