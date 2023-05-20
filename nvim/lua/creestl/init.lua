require("creestl.sets")
require("creestl.remaps")
require("creestl.plugins.appearance.colorizer")
require("creestl.plugins.appearance.lualine")
require("creestl.plugins.appearance.treesitter")
require("creestl.plugins.appearance.zenmode")
require("creestl.plugins.git.fugitive")
require("creestl.plugins.lsp.lsp")
require("creestl.plugins.navigation.harpoon")
require("creestl.plugins.navigation.telescope")
require("creestl.plugins.navigation.smooth_scroll")
require("creestl.plugins.navigation.nvim_tree")
require("creestl.plugins.navigation.nvim_tree_devicons")
require("creestl.themes.gruvbox")
require("creestl.themes.nightfly")
require("creestl.themes.rosepine")
require("creestl.themes.tokyonight")


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

