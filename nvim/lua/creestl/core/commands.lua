-- Hightlight yank region
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
    end,
})

-- Remove invalid characters after pasting from buffer
vim.api.nvim_create_user_command('Slash', ':%s/\r/', {})

vim.api.nvim_create_autocmd('VimEnter', {
    desc = 'Change cursor to thin when entering vim',
    callback = function()
        vim.cmd('set guicursor=n-v-c-sm:ver25,i-ci-ve:ver25,r-cr-o:ver25')
    end,
})

vim.api.nvim_create_autocmd('InsertEnter', {
    desc = 'Change cursorline color when entering insert mode',
    callback = function()
        vim.cmd('highlight CursorLineNr guifg=black guibg=#AEF5E6')
    end, 
})

vim.api.nvim_create_autocmd('InsertLeave', {
    desc = 'Return cursorline color when leaving insert mode',
    callback = function()
        vim.cmd('highlight CursorLineNr guifg=none guibg=none')
    end,
})
