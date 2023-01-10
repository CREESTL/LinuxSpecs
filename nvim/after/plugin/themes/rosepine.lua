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

    -- THESE GROUPS ARE FOR SOLIDITY SPECIFICALLY
    -- COMMENT THEM TO USE DEFAULT COLORS FOR OTHER LAGUAGES

	highlight_groups = {
		ColorColumn = { bg = 'rose' },
        ['@constructor'] = { fg = 'gold', style = "bold" },
        ['@keyword'] = { fg = 'gold', style = "bold" },

        ['@variable'] = { fg = 'text' },
        ['@number'] = { fg = 'foam' },
        ['@string'] = { fg = 'iris' },
        ['@field'] = { fg = 'pine' },
        ['@constant.builtin'] = { fg = 'love', style = 'italic' },

        ['@operator'] = { fg = 'rose' },
        ['@repeat'] = { fg = 'rose' },
        ['@conditional'] = { fg = 'rose' },

        ['@type'] = { fg = 'iris' },
        ['@type.qualifier'] = { fg = 'love', style = "italic" },

        ['@storageclass'] = { fg = 'iris', style = "italic" },

        ['@preproc'] = { fg = 'foam' },


        ['@punctuation.bracket'] = { fg = 'foam' },
        ['@punctuation.delimiter'] = { fg = 'foam' },
	}
})

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')
