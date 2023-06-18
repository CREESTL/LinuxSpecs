require("creestl.remaps")

local augroup = vim.api.nvim_create_augroup
local creestlGroup = augroup('creestl', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

-- Yank Highlight
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 1000,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = creestlGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

