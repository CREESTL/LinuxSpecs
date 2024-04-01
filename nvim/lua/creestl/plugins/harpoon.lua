-- Quick navigation between files in the list

return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        
        -- Mark file
        vim.keymap.set("n", "<leader>a", mark.add_file, {desc="Add current file to Harpoon"})
        
        -- Toggle the menu with all files
        vim.keymap.set("n", "<S-e>", ui.toggle_quick_menu, {desc="Toggle Harpoon menu"})
        
        -- Switch between two files
        -- (more could be added)
        vim.keymap.set("n", "<S-t>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<S-h>", function() ui.nav_file(2) end)
    end,
}
