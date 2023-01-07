require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {
            {
                'branch',
                'diff',
                colored = true,
                diff_color = {
                    added    = 'DiffAdd',
                    modified = 'DiffChange',
                    removed  = 'DiffDelete',
                },
                symbols = { added = '+', modified = '~', removed = '-' },
                'diagnostics',
                sources = { 'nvim_lsp' },
                sections = { 'error', 'warn' },
                diagnostics_color = {
                    error = 'DiagnosticError',
                    warn  = 'DiagnosticWarn',
                },
                symbols = { error = 'E', warn = 'W' },
            }
        },
        lualine_c = {
            {
                'filename',
                file_status = false,
                newfile_status = false,
                path = 3,
                shorting_target = 40,
                symbols = {
                    modified = '[+]',
                    readonly = '[-]',
                    unnamed = '[Unnamed]',
                    newfile = '[New]',
                }
            }
        },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
