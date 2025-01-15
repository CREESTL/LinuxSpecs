-- Yank animations

return {
    "rachartier/tiny-glimmer.nvim",
    event = "TextYankPost",
    config = function()
        local glimmer = require("tiny-glimmer")
        glimmer.setup({
            enabled = true,
            -- fade, bounce, left_to_right, pulse, rainbow
            default_animation = "fade",
            refresh_interval_ms = 6,
            animations = {
                fade = {
                    max_duration = 800,
                    min_duration = 500,
                    chars_for_max_duration = 10,
                },
            }
        })
    end,
}
