-- C debugger

return {
    "mfussenegger/nvim-dap",
    config = function()
        local keymap = vim.keymap

        keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
        keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or Continue execution" })
    end,
}
