-- Gruvbox color scheme

return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = false,
                comments = false,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true,    -- invert background for search, diffs, statuslines and errors
            contrast = "hard", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {
                NormalFloat = { bg = "none" },                        -- Remove background in floating windows
                SignColumn = { bg = "none" },                         -- Remove background in sign column,
                -- Remove background from diagnostic signs in sign column
                DiagnosticSignError = { fg = "#cc241d", bg = "none" }, -- neutral red
                DiagnosticSignWarn = { fg = "#b57614", bg = "none" }, -- neutral orange
                DiagnosticSignInfo = { fg = "#b8bb26", bg = "none" }, -- bright green
                DiagnosticSignHint = { fg = "#458588", bg = "none" }, -- neutran blue
            },
            dim_inactive = false,
            transparent_mode = false,
        })
        vim.cmd("colorscheme gruvbox")
    end,
}
