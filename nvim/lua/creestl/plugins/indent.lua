-- Show indentation levels with vertical lines

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        local ibl = require("ibl")

        ibl.setup({
            scope = { enabled = false },
            indent = {
                char = '·'
            }
        })
    end
}
