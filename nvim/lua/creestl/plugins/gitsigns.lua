return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup(
            {
                signs                        = {
                    add          = { text = '║' },
                    change       = { text = '║' },
                    delete       = { text = '⚊' },
                    topdelete    = { text = '⚍' },
                    changedelete = { text = '~' },
                    untracked    = { text = '⌇' },
                },
                signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
                numhl                        = false, -- Toggle with `:Gitsigns toggle_numhl`
                linehl                       = false, -- Toggle with `:Gitsigns toggle_linehl`
                word_diff                    = false, -- Toggle with `:Gitsigns toggle_word_diff`
                watch_gitdir                 = {
                    follow_files = true
                },
                auto_attach                  = true,
                attach_to_untracked          = false,
                current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts      = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 1000,
                    ignore_whitespace = false,
                    virt_text_priority = 100,
                },
                current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
                sign_priority                = 6,
                update_debounce              = 100,
                status_formatter             = nil,   -- Use default
                max_file_length              = 40000, -- Disable if file is longer than this (in lines)
                preview_config               = {
                    -- Options passed to nvim_open_win
                    border = 'single',
                    style = 'minimal',
                    relative = 'cursor',
                    row = 0,
                    col = 1
                },
            }
        )

        -- Change color of virtual text
        vim.api.nvim_set_hl(0, 'GitsignsCurrentLineBlame', { fg = '#9370DB', bg = 'none' })
        vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>",
            { desc = "Toggle current line blame" })
        vim.keymap.set("n", "<leader>gs", ":Gitsigns toggle_signs<CR>", { desc = "Toggle git signs in sign column" })
        vim.keymap.set("n", "<leader>gn", ":Gitsigns toggle_numhl<CR>",
            { desc = "Toggle highlight of numbers of changes lines" })
    end
}
