-- Use zen mode for concentration

return {
    "folke/zen-mode.nvim",
    config = function()
	  vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>", { desc = "Toggle Zen Mode" }) -- toggle file explorer
	end,
}
