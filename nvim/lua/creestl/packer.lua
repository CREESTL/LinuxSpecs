-- This file contains all packages installed via `Packer`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope for file search
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Gruvbox theme
	use {
		'eddyekofo94/gruvbox-flat.nvim',
		config = function()
			vim.g.gruvbox_italic_keywords = true
			vim.g.gruvbox_italic_functions = false
			vim.g.gruvbox_sidebars = { "packer" }
			-- Change the "hint" color to the "orange" color, and make the "error" color bright red
			vim.g.gruvbox_colors = { hint = "orange", error = "#ff0000" }
			-- Change the TabLineSel highlight group (used by barbar.nvim) to the "orange" color
			vim.g.gruvbox_theme = { TabLineSel = { bg = "orange" } }
			vim.g.gruvbox_flat_style = "dark"
			vim.cmd('colorscheme gruvbox-flat')
		end
	}

	-- Treesitter for parsing and highlighting
	use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

	-- Harpoon to quickly switch between files
	use ('theprimeagen/harpoon')

	-- Git
	use ('tpope/vim-fugitive')

	-- LSP Zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
	}
}
    -- Kommentary for quick comments
    use ('b3nj5m1n/kommentary')

    -- Surround for brackets, quotes
    use ({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- LuaLine status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }


end)
