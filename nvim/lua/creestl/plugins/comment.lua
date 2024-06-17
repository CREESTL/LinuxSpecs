-- Comment out multiple lines

return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true -- runs require('Comment').setup()
}
