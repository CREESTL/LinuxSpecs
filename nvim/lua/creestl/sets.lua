-- Show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab width is 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent autocatically
vim.opt.smartindent = true

-- Disable word wrao
vim.opt.wrap = false

-- Copy to clipboard
vim.opt.clipboard = unnamedplus

vim.opt.swapfile = false
vim.opt.backup = false

-- Highlight search matches
vim.opt.hlsearch = true
-- Use incremental search
vim.opt.incsearch = true

-- Use good quality colors
vim.opt.termguicolors = true

-- Leave 8 lines till the top/bottom of the screen while scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Use low update time
vim.opt.updatetime = 50

-- Leader symbol is space
vim.g.mapleader = " "



