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
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank text to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete into void registry
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Delete mapping for 'Q'
vim.keymap.set("n", "Q", "<nop>")

-- Replace all occurenices of the word under the cursor in the file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Put empty lines above and below the current line
vim.keymap.set("n", "[<space>", "<cmd>:pu! _<CR>:']+1<CR>")
vim.keymap.set("n", "]<space>", "<cmd>:pu _<CR>:']-1<CR>")