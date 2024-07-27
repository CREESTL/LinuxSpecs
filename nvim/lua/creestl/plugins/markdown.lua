return {
    'MeanderingProgrammer/markdown.nvim',
    main = "render-markdown",
    opts = {},
    name = 'render-markdown',                                                      -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    config = function()
        local markdown = require("render-markdown")

        markdown.setup({

            -- HEADINGS
            heading = {
                -- Turn on / off heading icon & background rendering
                enabled = true,
                -- Turn on / off any sign column related rendering
                sign = true,
                -- Replaces '#+' of 'atx_h._marker'
                -- The number of '#' in the heading determines the 'level'
                -- The 'level' is used to index into the array using a cycle
                -- The result is left padded with spaces to hide any additional '#'
                icons = { '★ ', '★ ', '★ ', '★ ', '★ ', '★ ' },
                -- Added to the sign column if enabled
                -- The 'level' is used to index into the array using a cycle
                signs = { '󰫎 ' },
                -- The 'level' is used to index into the array using a clamp
                -- Highlight for the heading icon and extends through the entire line
                backgrounds = {
                    'RenderMarkdownH1Bg',
                    'RenderMarkdownH2Bg',
                    'RenderMarkdownH3Bg',
                    'RenderMarkdownH4Bg',
                    'RenderMarkdownH5Bg',
                    'RenderMarkdownH6Bg',
                },
                -- The 'level' is used to index into the array using a clamp
                -- Highlight for the heading and sign icons
                foregrounds = {
                    'RenderMarkdownH1',
                    'RenderMarkdownH2',
                    'RenderMarkdownH3',
                    'RenderMarkdownH4',
                    'RenderMarkdownH5',
                    'RenderMarkdownH6',
                },
            },

            -- CODE BLOCKS
            code = {
                -- Turn on / off code block & inline code rendering
                enabled = true,
                -- Turn on / off any sign column related rendering
                sign = false,
                -- Determines how code blocks & inline code are rendered:
                --  none: disables all rendering
                --  normal: adds highlight group to code blocks & inline code, adds padding to code blocks
                --  language: adds language icon to sign column if enabled and icon + name above code blocks
                --  full: normal + language
                style = 'full',
                -- Amount of padding to add to the left of code blocks
                left_pad = 4,
                -- Amount of padding to add to the right of code blocks when width is 'block'
                right_pad = 4,
                -- Width of the code block background:
                --  block: width of the code block
                --  full: full width of the window
                width = 'block',
                -- Determins how the top / bottom of code block are rendered:
                --  thick: use the same highlight as the code body
                --  thin: when lines are empty overlay the above & below icons
                border = 'thick',
                -- Used above code blocks for thin border
                above = '▄',
                -- Used below code blocks for thin border
                below = '▀',
                -- Highlight for code blocks & inline code
                highlight = 'RenderMarkdownCode',
                highlight_inline = 'RenderMarkdownCodeInline',
            },

            -- DASHED LINE
            dash = {
                -- Turn on / off thematic break rendering
                enabled = true,
                -- Replaces '---'|'***'|'___'|'* * *' of 'thematic_break'
                -- The icon gets repeated across the window's width
                icon = '─',
                -- Highlight for the whole line generated from the icon
                highlight = 'RenderMarkdownDash',
            },

            -- BULLETED LISTS
            bullet = {
                -- Turn on / off list bullet rendering
                enabled = true,
                -- Replaces '-'|'+'|'*' of 'list_item'
                -- How deeply nested the list is determines the 'level'
                -- The 'level' is used to index into the array using a cycle
                -- If the item is a 'checkbox' a conceal is used to hide the bullet instead
                icons = { '◇', '◇', '◇', '◇' },
                -- Highlight for the bullet icon
                highlight = 'RenderMarkdownBullet',
            },

            -- CHECKBOXES
            -- Checkboxes are a special instance of a 'list_item' that start with a 'shortcut_link'
            -- There are two special states for unchecked & checked defined in the markdown grammar
            checkbox = {
                -- Turn on / off checkbox state rendering
                enabled = true,
                unchecked = {
                    -- Replaces '[ ]' of 'task_list_marker_unchecked'
                    icon = '󰄱 ',
                    -- Highlight for the unchecked icon
                    highlight = 'RenderMarkdownUnchecked',
                },
                checked = {
                    -- Replaces '[x]' of 'task_list_marker_checked'
                    icon = '󰱒 ',
                    -- Highligh for the checked icon
                    highlight = 'RenderMarkdownChecked',
                },
            },

            -- QUOTES
            quote = {
                -- Turn on / off block quote & callout rendering
                enabled = true,
                -- Replaces '>' of 'block_quote'
                icon = '▋',
                -- Highlight for the quote icon
                highlight = 'RenderMarkdownQuote',
            },

            -- TABLES
            pipe_table = {
                -- Turn on / off pipe table rendering
                enabled = true,
                -- Determines how the table as a whole is rendered:
                --  none: disables all rendering
                --  normal: applies the 'cell' style rendering to each row of the table
                --  full: normal + a top & bottom line that fill out the table when lengths match
                style = 'full',
                -- Determines how individual cells of a table are rendered:
                --  overlay: writes completely over the table, removing conceal behavior and highlights
                --  raw: replaces only the '|' characters in each row, leaving the cells unmodified
                --  padded: raw + cells are padded with inline extmarks to make up for any concealed text
                cell = 'padded',
                -- Characters used to replace table border
                -- Correspond to top(3), delimiter(3), bottom(3), vertical, & horizontal
                -- stylua: ignore
                border = {
                    '┌', '┬', '┐',
                    '├', '┼', '┤',
                    '└', '┴', '┘',
                    '│', '─',
                },
                -- Highlight for table heading, delimiter, and the line above
                head = 'RenderMarkdownTableHead',
                -- Highlight for everything else, main table rows and the line below
                row = 'RenderMarkdownTableRow',
                -- Highlight for inline padding used to add back concealed space
                filler = 'RenderMarkdownTableFill',
            },

            -- LINKS
            link = {
                -- Turn on / off inline link icon rendering
                enabled = true,
                -- Inlined with 'image' elements
                image = '󰥶 ',
                -- Inlined with 'inline_link' elements
                hyperlink = '󰌹 ',
                -- Applies to the inlined icon
                highlight = 'RenderMarkdownLink',
            },

            -- SIGNS
            sign = {
                -- Turn on / off sign rendering
                enabled = true,
                -- More granular mechanism, disable signs within specific buftypes
                exclude = {
                    buftypes = { 'nofile' },
                },
                -- Applies to background of sign text
                highlight = 'RenderMarkdownSign',
            },

        })

        -- Change color for signcolumn arrow for headings
        vim.api.nvim_set_hl(0, 'RenderMarkdownH1', { fg = '#FFFFFF', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH2', { fg = '#FFFFFF', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH3', { fg = '#FFFFFF', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH4', { fg = '#FFFFFF', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH5', { fg = '#FFFFFF', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH6', { fg = '#FFFFFF', bg = 'none' })

        -- Change color for heading text
        vim.api.nvim_set_hl(0, 'RenderMarkdownH1Bg', { fg = '#FF00B6', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH2Bg', { fg = '#54E522', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH3Bg', { fg = '#02FF7D', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH4Bg', { fg = '#04CA9D', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH5Bg', { fg = '#04A3CA', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownH6Bg', { fg = '#0279FF', bg = 'none' })

        -- Change color for code blocks
        vim.api.nvim_set_hl(0, 'RenderMarkdownCode', { fg = '#068077', bg = 'none' })
        vim.api.nvim_set_hl(0, 'RenderMarkdownCodeInline', { fg = '#068077', bg = 'none' })

        -- Change color for bulletted list
        vim.api.nvim_set_hl(0, 'RenderMarkdownBullet', { fg = '#E3CC74', bg = 'none' })

        -- Change color for quotes
        vim.api.nvim_set_hl(0, 'RenderMarkdownQuote', { fg = '#FFAAC1', bg = 'none' })
    end,
}
