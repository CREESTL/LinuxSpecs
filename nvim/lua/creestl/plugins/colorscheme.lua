-- Colorscheme 
return {

    "rose-pine/neovim",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            dark_variant = 'main',
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = false,
            disable_float_background = false,
            disable_italics = true,
            
            groups = {
                background = 'base',
                panel = 'surface',
                border = 'highlight_med',
                comment = 'muted',
                link = 'iris',
                punctuation = 'subtle',
                
                error = 'love',
                hint = 'iris',
                info = 'foam',
                warn = 'gold',
                
                git_add = 'foam',
                git_change = 'rose',
                git_delete = 'love',
                git_dirty = 'rose',
                git_ignore = 'muted',
                git_merge = 'iris',
                git_rename = 'pine',
                git_stage = 'iris',
                git_text = 'rose',
                
                headings = {
                    h1 = 'iris',
                    h2 = 'foam',
                    h3 = 'rose',
                    h4 = 'gold',
                    h5 = 'pine',
                    h6 = 'foam',
                }
                -- or set all headings at once
                -- headings = 'subtle'
            },
            
            
            highlight_groups = {
                ColorColumn = { bg = 'rose' },
            },
        })

        vim.cmd("colorscheme rose-pine")
    end,


	-- "ellisonleao/gruvbox.nvim",
	-- priority = 1000,
	-- config = function()
 --        require("gruvbox").setup({
 --            undercurl = true,
 --            underline = true,
 --            bold = true,
 --            italic = {
 --                strings = false,
 --                comments = false,
 --            },
 --            strikethrough = true,
 --            invert_selection = false,
 --            invert_signs = false,
 --            invert_tabline = false,
 --            invert_intend_guides = false,
 --            inverse = true, -- invert background for search, diffs, statuslines and errors
 --            contrast = "hard", -- can be "hard", "soft" or empty string
 --            palette_overrides = {},
 --            overrides = {},
 --            dim_inactive = false,
 --            transparent_mode = false,
 --        })
 --        vim.cmd("colorscheme gruvbox")
 --    end,
}
