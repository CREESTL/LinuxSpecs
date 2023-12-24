-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Load all plugins on startup
require("lazy").setup({ { import = "creestl.plugins" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
   -- Disable notification Lazy sends on each change in config
  change_detection = {
    notify = false,
  },
})
