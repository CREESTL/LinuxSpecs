return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}},
    config = function()
        require('dashboard').setup {
            theme = 'hyper', --  theme is doom and hyper default is hyper
            shortcut_type = 'letter',   --  shorcut type 'letter' or 'number'
            config = {
                -- Show current day, date, time
                week_header = {
                    enable = false,
                },
                -- Show the amount of installed / loaded packages
                packages = {
                    enable = true
                },
                -- Disable move keys
                disable_move = true,
                -- Text of the header (get at https://patorjk.com/software/taag/)
                header = {
                    " ██████╗██████╗ ███████╗███████╗███████╗████████╗██╗     ",
                    "██╔════╝██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝██║     ",
                    "██║     ██████╔╝█████╗  █████╗  ███████╗   ██║   ██║     ",
                    "██║     ██╔══██╗██╔══╝  ██╔══╝  ╚════██║   ██║   ██║     ",
                    "╚██████╗██║  ██║███████╗███████╗███████║   ██║   ███████╗",
                    " ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝   ╚══════╝"
                },
                -- Text of the footer
                footer = {},
                -- Most recently used files
                mru = {
                    limit = 5,
                    icon = "◍",
                    cwd_only = false -- Show only recent files in current directory
                },
                -- Hide those elements when on dashboard
                hide = {
                    statusline = true,    -- hide statusline default is true
                    tabline = true,      -- hide the tabline
                    winbar = true        -- hide winbar
                },
                -- List of shortcuts
                shortcut = {
                    { 
                        icon = '󰊳 ',
                        icon_hl = '@variable',
                        desc = 'Update Lazy',
                        group = "DiagnosticHint",
                        action = 'Lazy update',
                        key = 'u'
                    },
                    {
                        icon = ' ',
                        icon_hl = '@variable',
                        desc = 'Find text',
                        group = "DiagnosticHint",
                        action = 'Telescope live_grep',
                        key = 't'
                    },
                    {
                        icon = ' ',
                        icon_hl = '@variable',
                        desc = 'Find file',
                        group = "DiagnosticHint",
                        action = 'Telescope find_files',
                        key = 'f'
                    },
                    {
                        icon = ' ',
                        icon_hl = '@variable',
                        desc = 'Recent files',
                        group = "DiagnosticHint",
                        action = 'Telescope oldfiles',
                        key = 'o'
                    },
                    {
                        icon = ' ',
                        icon_hl = '@variable',
                        desc = 'Config NeoVim',
                        group = "DiagnosticHint",
                        action = 'cd ~/.config/nvim_classic | edit init.lua | NvimTreeOpen',
                        key = 'c'
                    }
                },
            },
        }
    end,
}
