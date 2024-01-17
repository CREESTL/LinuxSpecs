-- Colorscheme

-- #################### ROSEPINE ####################
return {

    "rose-pine/neovim",
    priority = 1000,
    config = function()
        require('rose-pine').setup({
            variant = "auto", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive_windows = false,
            extend_background_behind_borders = true,

            styles = {
                bold = true,
                italic = false,
                transparency = false,
            },

            groups = {
                border = "muted",
                link = "iris",
                panel = "surface",

                error = "love",
                hint = "iris",
                info = "foam",
                warn = "gold",

                git_add = "foam",
                git_change = "rose",
                git_delete = "love",
                git_dirty = "rose",
                git_ignore = "muted",
                git_merge = "iris",
                git_rename = "pine",
                git_stage = "iris",
                git_text = "rose",
                git_untracked = "subtle",

                headings = {
                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },
                -- Alternatively, set all headings at once.
                -- headings = "subtle",
            },

            highlight_groups = {
                -- Comment = { fg = "foam" },
                -- VertSplit = { fg = "muted", bg = "muted" },
            },

            before_highlight = function(group, highlight, palette)
                -- Disable all undercurls
                -- if highlight.undercurl then
                --     highlight.undercurl = false
                -- end
                --
                -- Change palette colour
                -- if highlight.fg == palette.pine then
                --     highlight.fg = palette.foam
                -- end
            end,
        })

        vim.cmd('colorscheme rose-pine')
        -- vim.cmd('colorscheme rose-pine-main')
        -- vim.cmd('colorscheme rose-pine-moon')
        -- vim.cmd('colorscheme rose-pine-dawn')
    end,
}

-- #################### NORD ####################
-- return {
--     'shaunsingh/nord.nvim',
--     priority = 1000,
--     config = function()
--         require("lualine").setup({
--             options = {
--                 theme = "nord"
--             }
--         })
--
--         vim.g.nord_italic = false
--         vim.g.nord_bold = true
--
--         vim.cmd("colorscheme nord")
--     end,
-- }


-- #################### GRUVBOX ####################
-- return {
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
-- }
