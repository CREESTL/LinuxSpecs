require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "help", "solidity", "javascript", "typescript", "python", "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- solidity has awful highlighting as of now
    disable = { "solidity" },

    additional_vim_regex_highlighting = false,
  },
}
