-- Keymaps for plugins are set in '/plugins/<plugin>.lua/ files

vim.g.mapleader = " "

-- Move highlighted strings
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Line below the current gets appended and the cursor stays in place
vim.keymap.set("n", "J", "mzJ`z")

-- Moving half a screen in both directions keeps cursor in the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yanked text stays in the buffer
vim.keymap.set("x", "<leader>p", [["_dP]], {desc="Paste and leave in buffer"})

-- Yank text to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc="Yank into clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]], {desc="Yank into clipboard"})

-- Delete into void registry
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc="Delete into void"})

-- Delete mapping for 'Q'
vim.keymap.set("n", "Q", "<nop>")

-- Reset highlighted elements
vim.keymap.set("n", "<leader>l", "<cmd>:nohlsearch<CR>", {desc="Reset highlighted"})

-- Replace all occurenices of the word under the cursor in the file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc="Replace all occurenices"})

-- Remap Escape
vim.keymap.set({"v", "i"}, "jk", "<Esc>")

-- Put empty lines above and below the current line
vim.keymap.set("n", "[<space>", "<cmd>:pu! _<CR>:']+1<CR>", {desc="Insert empty line above"})
vim.keymap.set("n", "]<space>", "<cmd>:pu _<CR>:']-1<CR>", {desc="Insert empty line below"})
