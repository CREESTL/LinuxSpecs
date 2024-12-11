-- Find files or strings in directory


return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                -- Files with these names (or directories) will be ignored in search
                file_ignore_patterns = {
                    "venv",
                    "mypy_cache",
                    "pytest_cache",
                    "git",
                    "__pycache__",
                },
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next,     -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        local keymap = vim.keymap

        local builtin = require("telescope.builtin")

        keymap.set("n", "<leader>ff", function()
            builtin.find_files({
                find_command = {
                    "rg",
                    "--files",
                    -- "--hidden",    -- Search in hidden files (starting with a dot)
                    -- "--no-ignore", -- Do not ignore files from .gitignore
                }
            })
        end, { desc = "Find file in directory" })
        keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in directory" })
        keymap.set("n", "<leader>fr", builtin.resume, { desc = "Resume search" })
    end,
}
