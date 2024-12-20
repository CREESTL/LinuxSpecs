-- Prettier line at the bottom

return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local lualine = require("lualine")

        lualine.setup({
            options = {
                theme = 'auto',
                component_separators = '',
                section_separators = '',
            },
            sections = {
                lualine_a = {
                    {
                        'mode',
                    }

                },
                lualine_b = {
                    {
                        'filename',
                        file_status = true,
                        newfile_status = true,
                        path = 0,
                        shorting_target = 30,
                        symbols = {
                            modified = '[+]',
                            readonly = '[RO!]',
                            unnamed = '[No Name]',
                            newfile = '[New]',
                        },
                        -- Separators do not work for filename
                    }
                },
                lualine_c = {
                    {
                        'diagnostics',
                        sources = { 'nvim_lsp' },
                        sections = { 'error', 'warn' },
                        diagnostics_color = {
                            error = 'DiagnosticError',
                            warn  = 'DiagnosticWarn',
                        },
                        symbols = { error = 'E', warn = 'W' },
                        always_visible = false,
                        update_in_insert = false,
                        separator = { left = '┃' },
                    }
                },
                lualine_x = {
                    {
                        'branch',
                        colored = true,
                        diff_color = {
                            added    = 'DiffAdd',
                            modified = 'DiffChange',
                            removed  = 'DiffDelete',
                        },
                        symbols = { added = '+', modified = '~', removed = '-' },
                    }
                },
                lualine_y = { 'filetype' },
                lualine_z = {
                    {
                        'location',
                    }
                }
            },

        })
    end,
}
