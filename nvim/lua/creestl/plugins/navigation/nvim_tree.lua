-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  auto_reload_on_write = true,
  disable_netrw = true,
  sync_root_with_cwd = true,
  reload_on_bufenter = true,
  respect_buf_cwd = true,
  view = {
      centralize_selection = false,
      cursorline = true,
      debounce_delay = 15,
      width = 30,
      hide_root_folder = false,
      side = "left",
      preserve_window_proportions = false,
      number = false,
      relativenumber = false,
  },
  renderer = {
      add_trailing = false,
      group_empty = false,
      highlight_git = false,
      full_name = false,
      highlight_opened_files = "none",
      highlight_modified = "none",
      root_folder_label = ":~:s?$?/..?",
      indent_width = 2,
      indent_markers = {
          enable = false,
          inline_arrows = true,
          icons = {
              corner = "└",
              edge = "│",
              item = "│",
              bottom = "─",
              none = " ",
          },
      },
      icons = {
          webdev_colors = true,
          git_placement = "before",
          modified_placement = "after",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
              file = true,
              folder = true,
              folder_arrow = false,
              git = true,
              modified = true,
          },
          glyphs = {
              default = "",
              symlink = "",
              bookmark = "",
              modified = "●",
              folder = {
                  arrow_closed = "",
                  arrow_open = "",
                  default = "",
                  open = "",
                  empty = "",
                  empty_open = "",
                  symlink = "",
                  symlink_open = "",
              },
              git = {
                  unstaged = "✗",
                  staged = "✓",
                  unmerged = "",
                  renamed = "➜",
                  untracked = "★",
                  deleted = "",
                  ignored = "◌",
              },
          },
      },
  },
  filters = {
      dotfiles = false,
      git_clean = false,
      no_buffer = false,
      custom = {},
      exclude = {},
  },
  git = {
      enable = true,
      ignore = false,
      show_on_dirs = true,
      show_on_open_dirs = true,
      timeout = 400,
  },
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
