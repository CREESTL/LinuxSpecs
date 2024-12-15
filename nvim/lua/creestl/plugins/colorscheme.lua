-- Colorscheme 
-- (only one must be uncommented)

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

-- Lackluster
return {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()

        local lackluster = require("lackluster")

        -- Tweak colors
        -- This should be done in a separate 'setup()' call
        lackluster.setup({
            -- Change color values
            -- you can set a value to a custom hexcode like' #aaaa77' (hashtag required)
            -- or if the value is 'default' or nil it will use lackluster's default color
            tweak_color = {
                lack = "default",
                luster = "default",
                orange = "default",
                yellow = "#f8f20c",
                green = "default",
                blue = "default",
                red = "default",
                -- WARN: Changing these is a bad idea
                -- black = "default",
                -- gray1 = "default",
                -- gray2 = "default",
                -- gray3 = "default",
                -- gray4 = "default",
                -- gray5 = "default",
                -- gray6 = "default",
                -- gray7 = "default",
                -- gray8 = "default",
                -- gray9 = "default",
            },

        })

        local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9

        lackluster.setup({
            -- Change colors of specific syntax elements.
            -- This is a full list of all supported elements.
            -- https://github.com/slugbyte/lackluster.nvim/blob/6d206a3af7dd2e8389eecebab858e7d97813fc0c/lua/lackluster/tweak.lua#L49
            tweak_syntax = {
                -- String types
                string = color.orange,
                -- ???
                string_escape = color.orange,
                -- Comments
                comment = color.gray5,
                -- Built-int language functions
                builtin = color.lack,
                -- Types
                type = color.lack,
                -- All keywords except "return"
                keyword = color.yellow,
                -- "return"-like keyword
                keyword_return = color.yellow,
                -- "exception"-like keywords
                keyword_exception = color.orange,
            },
            -- Change background colors.
            -- Use "none" for transparency.
            tweak_background = {
                -- Background of normal editor mode
                normal = color.gray2,
                -- Telescope windows
                telescope = 'default',
                -- nvim_cmp, wildmenu ...
                menu = 'default',
                -- lazy, mason, whichkey ...
                popup = 'default',
            },
            -- Change specific Treesitter highlight groups.
            -- To see highlight group of element under the cursor, use Treesitter Playground ":Inspect":
            -- https://github.com/nvim-treesitter/playground
            -- See :help nvim_set_hl for more available keys.
            -- overwrite == true will force overwrite lackluster's default highlights
            -- overwrite == false will extend/update lackluster's defaults (nil also does this)
            tweak_highlight = {
                -- Variables
                ["@variable"] = {
                    overwrite = true,
                    fg = color.luster
                },
                ["@variable.parameter"] = {
                    overwrite = true,
                    link = "@variable"
                },
                ["@variable.member"] = {
                    overwrite = true,
                    link = "@variable"
                },
                ["@variable.builtin"] = {
                    overwrite = true,
                    fg = color.lack
                },
                -- Functions
                ["@function"] = {
                    overwrite = true,
                    fg = color.luster
                },
                ["@function.call"] = {
                    overwrite = true,
                    fg = color.gray7
                },
                ["@function.method.call"] = {
                    overwrite = true,
                    link = "@function.call"
                },
                ["@function.method"] = {
                    overwrite = true,
                    link = "@function.call"
                },
                ["@function.builtin"] = {
                    overwrite = true,
                    fg = color.lack
                },
                ["@constructor"] = {
                    overwrite = true,
                    link = "@function.call"
                },
                -- Properties
                ["@property"] = {
                    overwrite = true,
                    fg = color.gray7
                },
            },
            -- Disable plugin affects for other plugins.
            -- Set "true" to disable for chosen plugin.
            disable_plugin = {
                telescope = true,
                tree = true,
            },
        })

        vim.cmd.colorscheme("lackluster-hack")
    end,
}
