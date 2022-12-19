local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Mark file
vim.keymap.set("n", "<leader>a", mark.add_file)

-- Toggle the menu with all files
vim.keymap.set("n", "<S-e>", ui.toggle_quick_menu)

-- Switch between two files
-- (more could be added)
vim.keymap.set("n", "<S-t>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<S-h>", function() ui.nav_file(2) end)
