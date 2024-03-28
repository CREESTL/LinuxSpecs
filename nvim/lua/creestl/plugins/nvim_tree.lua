-- Side menu for navigation

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

	local function my_on_attach(bufnr)
		local api = require("nvim-tree.api")
		
		-- Default mappings
		api.config.mappings.default_on_attach(bufnr)

		-- Custom mappings
		vim.keymap.set('n', '<leader>ef', api.tree.find_file)
		vim.keymap.set('n', '<leader>ee', api.tree.toggle)
		vim.keymap.set('n', '<leader>er', api.tree.reload)

	end

        -- configure nvim-tree
        nvimtree.setup({

	        on_attach = my_on_attach,

            view = {
                width = 35,
                relativenumber = true,
            },
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
            },
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = true,
                        picker = "default",
                    },
                },
            },
            filters = {
                custom = { ".DS_Store" },
            },
            git = {
                ignore = false,
            },
        })

    end,
}
