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
    use { 'ellisonleao/gruvbox.nvim' }

    -- Nightfly theme
    use { 'bluz71/vim-nightfly-colors' }

    -- Rose Pine theme
    use ({
    'rose-pine/neovim',
    as = 'rose-pine'
    })

    -- Tokyo Night theme
    use ('folke/tokyonight.nvim')

	-- Treesitter for parsing and highlighting
    -- Specific versions are used here because later versions are not compatible
    -- with my queries file.
	use ({'nvim-treesitter/nvim-treesitter', tag = 'v0.8.1', run = ':TSUpdate'})
    -- Playground to see which tokens it can parse
    use ({'nvim-treesitter/playground', commit='3421bbb'})

    -- Color highlighter
    use ('norcalli/nvim-colorizer.lua')

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

    -- Automatically add pairing brackets
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Smooth scrolling
    use ('karb94/neoscroll.nvim')

    -- Zen mode
    use ("folke/zen-mode.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end

end)
