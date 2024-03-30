-- Floating command window

return {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
        local cmdline = require("fine-cmdline")
        cmdline.setup({
            cmdline = {
                enable_keymaps = true, -- use default keymaps
                smart_history = true, -- remember commands history
                prompt = '» '
            },
            -- Config for Nui popup (the window itself)
            popup = {
                -- Position relative to top left corner
                position = {
                    row = '10%', 
                    col = '50%',
                },
                size = {
                    width = '70%',
                    height = '100%',
                },
                border = {
                    style = {
                        top_left    = "╭", top    = "─",    top_right = "╮",
                        left        = "│",                      right = "│",
                        bottom_left = "╰", bottom = "─", bottom_right = "╯",
                    },
                },
                win_options = {
                    winblend = 20, -- add some transparency
                    winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
                },
                -- Enter popup right after it's shown
                enter = true
            }
        })

        -- Toggle floating window
		vim.keymap.set('n', ':',  '<cmd>FineCmdline<CR>')

    end,
}
