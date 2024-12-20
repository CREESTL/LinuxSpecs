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
                yellow = "#e1cf1c",
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
                normal = color.black,
                -- TODO: This does not change telescope color.
                -- Telescope windows
                telescope = color.gray2,
                -- nvim_cmp, wildmenu ...
                menu = color.gray2,
                -- diagnostics, lazy, mason, whichkey ...
                popup = color.gray2,
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

-- ==================================================================================================================================================
-- Catpuccin
-- return {
--     "catppuccin/nvim",
--     priority = 1000,
--     config = function()
--         local catpuccin = require("catppuccin")
--
--         catpuccin.setup({
--             flavour = "macchiato", -- latte, frappe, macchiato, mocha
--             background = {         -- :h background
--                 light = "latte",
--                 dark = "mocha",
--             },
--             transparent_background = false, -- disables setting the background color.
--             show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
--             term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
--             dim_inactive = {
--                 enabled = false,            -- dims the background color of inactive window
--                 shade = "dark",
--                 percentage = 0.15,          -- percentage of the shade to apply to the inactive window
--             },
--             no_italic = true,               -- Force no italic
--             no_bold = false,                -- Force no bold
--             no_underline = false,           -- Force no underline
--             styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
--                 comments = { "italic" },    -- Change the style of comments
--                 conditionals = { "italic" },
--                 loops = { "bold" },
--                 functions = { "bold" },
--                 keywords = { "bold" },
--                 strings = {},
--                 variables = {},
--                 numbers = {},
--                 booleans = {},
--                 properties = {},
--                 types = {},
--                 operators = {},
--                 -- miscs = {}, -- Uncomment to turn off hard-coded styles
--             },
--             color_overrides = {},
--             custom_highlights = {},
--             default_integrations = true,
--             integrations = {
--                 cmp = true,
--                 gitsigns = true,
--                 nvimtree = true,
--                 treesitter = true,
--                 notify = false,
--                 barbar = true,
--                 harpoon = true,
--                 mason = true,
--                 telescope = true,
--                 which_key = true,
--                 mini = {
--                     enabled = true,
--                     indentscope_color = "",
--                 },
--                 -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--             },
--         })
--         vim.cmd.colorscheme("catppuccin")
--     end,
-- }

-- ==================================================================================================================================================
-- Rose Pine
-- return {
--     "rose-pine/neovim",
--     priority = 1000,
--     config = function()
--         require("rose-pine").setup({
--             variant = "main", -- auto, main, moon, or dawn
--             dark_variant = "main", -- main, moon, or dawn
--             dim_inactive_windows = false,
--             extend_background_behind_borders = true,
--
--             enable = {
--                 terminal = true,
--                 legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--                 migrations = true, -- Handle deprecated options automatically
--             },
--
--             styles = {
--                 bold = true,
--                 italic = false,
--                 transparency = false,
--             },
--
--             groups = {
--                 border = "muted",
--                 link = "iris",
--                 panel = "surface",
--
--                 error = "love",
--                 hint = "iris",
--                 info = "foam",
--                 note = "pine",
--                 todo = "rose",
--                 warn = "gold",
--
--                 git_add = "foam",
--                 git_change = "rose",
--                 git_delete = "love",
--                 git_dirty = "rose",
--                 git_ignore = "muted",
--                 git_merge = "iris",
--                 git_rename = "pine",
--                 git_stage = "iris",
--                 git_text = "rose",
--                 git_untracked = "subtle",
--
--                 h1 = "iris",
--                 h2 = "foam",
--                 h3 = "rose",
--                 h4 = "gold",
--                 h5 = "pine",
--                 h6 = "foam",
--             },
--
--             palette = {
--                 -- Override the builtin palette per variant
--                 -- moon = {
--                 --     base = '#18191a',
--                 --     overlay = '#363738',
--                 -- },
--             },
--
--             highlight_groups = {
--                 -- Comment = { fg = "foam" },
--                 -- VertSplit = { fg = "muted", bg = "muted" },
--             },
--
--             before_highlight = function(group, highlight, palette)
--                 -- Disable all undercurls
--                 -- if highlight.undercurl then
--                 --     highlight.undercurl = false
--                 -- end
--                 --
--                 -- Change palette colour
--                 -- if highlight.fg == palette.pine then
--                 --     highlight.fg = palette.foam
--                 -- end
--             end,
--         })
--
--         vim.cmd("colorscheme rose-pine")
--     end,
-- }
