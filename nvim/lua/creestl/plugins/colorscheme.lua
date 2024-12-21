-- Colorscheme
-- (only one must be uncommented)

-- ==================================================================================================================================================
-- Gruvbox
-- return {
--
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
--         require("gruvbox").setup({
--             undercurl = true,
--             underline = true,
--             bold = true,
--             italic = {
--                 strings = false,
--                 comments = false,
--             },
--             strikethrough = true,
--             invert_selection = false,
--             invert_signs = false,
--             invert_tabline = false,
--             invert_intend_guides = false,
--             inverse = true, -- invert background for search, diffs, statuslines and errors
--             contrast = "hard", -- can be "hard", "soft" or empty string
--             palette_overrides = {},
--             overrides = {
--                 NormalFloat = { bg = "none" }, -- Remove background in floating windows
--                 SignColumn = { bg = "none" }, -- Remove background in sign column,
--                 -- Remove background from diagnostic signs in sign column
--                 DiagnosticSignError = { fg = "#cc241d", bg = "none"}, -- neutral red
--                 DiagnosticSignWarn = { fg = "#b57614", bg = "none"}, -- neutral orange
--                 DiagnosticSignInfo = { fg = "#b8bb26", bg = "none"}, -- bright green
--                 DiagnosticSignHint = { fg = "#458588", bg = "none"}, -- neutran blue
--             },
--             dim_inactive = false,
--             transparent_mode = false,
--         })
--         vim.cmd("colorscheme gruvbox")
--     end,
-- }

-- ==================================================================================================================================================
-- Rose Pine
return {
    "rose-pine/neovim",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "main", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive_windows = false,
            extend_background_behind_borders = true,

            enable = {
                terminal = true,
                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                migrations = true, -- Handle deprecated options automatically
            },

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
                note = "pine",
                todo = "rose",
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

                h1 = "iris",
                h2 = "foam",
                h3 = "rose",
                h4 = "gold",
                h5 = "pine",
                h6 = "foam",
            },

            palette = {
                -- Override the builtin palette per variant
                -- moon = {
                --     base = '#18191a',
                --     overlay = '#363738',
                -- },
            },

            -- See all colors in the pallete: https://rosepinetheme.com/palette/
            highlight_groups = {

                Comment = { fg = "muted" },
                String = { fg = "foam" },
                ["@string.regexp"] = { fg = "foam" },

                Number = { fg = "rose" },
                 ["@constant"] = { fg = "rose" },
                 ["@constant.builtin"] = { fg = "rose" },

                 ["@keyword"] = { fg = "gold" },
                 ["@keyword.return"] = { fg = "gold" },
                 ["@keyword.repeat"] = { fg = "gold" },
                 ["@keyword.conditional"] = { fg = "gold" },
                 ["@keyword.exception"] = { fg = "gold" },
                 ["@keyword.operator"] = { fg = "gold" },
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

        vim.cmd("colorscheme rose-pine")
    end,
}
