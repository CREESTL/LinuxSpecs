require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'moon',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = true,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

        git_add = 'foam',
		git_change = 'rose',
		git_delete = 'love',
		git_dirty = 'rose',
		git_ignore = 'muted',
		git_merge = 'iris',
		git_rename = 'pine',
		git_stage = 'iris',
		git_text = 'rose',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},


	highlight_groups = {
		ColorColumn = { bg = 'rose' },
 	},


    -- CUSTOM COLORS FOR SOLIDITY FILES --

    -- base: #191724
    -- surface: #1f1d2e
    -- overlay: #26233a
    -- muted: #6e6a86
    -- subtle: #908caa
    -- text: #e0def4
    -- love: #eb6f92
    -- gold: #f6c177
    -- rose: #ebbcba
    -- pine: #31748f
    -- foam: #9ccfd8
    -- iris: #c4a7e7
    -- highlight_low: #21202e
    -- highlight_med: #403d52
    -- highlight_high: #524f67

    vim.api.nvim_create_autocmd("FileType", {
        pattern = {"solidity"},
        callback = function()
            vim.api.nvim_set_hl(0, "@constructor", { fg = "#f6c177", bold=true})
            vim.api.nvim_set_hl(0, "@keyword", { fg = "#f6c177", bold=true})

            vim.api.nvim_set_hl(0, "@variable", { fg = "#e0def4" })
            vim.api.nvim_set_hl(0, "@number", { fg = "#9ccfd8" })
            vim.api.nvim_set_hl(0, "@string", { fg = "#f6c177", italic=true})
            vim.api.nvim_set_hl(0, "@field", { fg = "#ebbcba" })
            vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "#9ccfd8", italic=true })

            vim.api.nvim_set_hl(0, "@include", { fg = "#31748f", italic=true })

            vim.api.nvim_set_hl(0, "@repeat", { fg = "#f6c177" })
            vim.api.nvim_set_hl(0, "@conditional", { fg = "#f6c177" })
            vim.api.nvim_set_hl(0, "@operator", { fg = "#eb6f92" })
            vim.api.nvim_set_hl(0, "@keyword.operator", { fg = "#9ccfd8" })

            vim.api.nvim_set_hl(0, "@type", { fg = "#c4a7e7" })
            vim.api.nvim_set_hl(0, "@type.qualifier", { fg = "#eb6f92", italic=true })

            vim.api.nvim_set_hl(0, "@storageclass", { fg = "#c4a7e7", italic=true })

            vim.api.nvim_set_hl(0, "@preproc", { fg = "#9ccfd8" })

            vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#9ccfd8" })
            vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#908caa" })

        end,
    })
})

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')
