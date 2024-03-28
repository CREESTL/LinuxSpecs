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
        -- Cursor is a built-in white cursor. It's not changed here anywhere
        -- iCursor is a "insert cursor". It's a custom highlight group
        vim.cmd('set guicursor=n-v-c-sm:ver25-Cursor,i-ci-ve:ver25-iCursor,r-cr-o:ver25-Cursor')
    end,
})

vim.api.nvim_create_autocmd('InsertEnter', {
    desc = 'Change cursor color when entering insert mode',
    callback = function()
        vim.cmd('highlight iCursor guifg=green guibg=#6C03FB')
    end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
    desc = 'Return cursor color when leaving insert mode',
    callback = function()
        vim.cmd('highlight iCursor guifg=green guibg=white')
    end,
})

vim.api.nvim_create_autocmd('VimLeavePre', {
    desc = 'Bring back terminal cursor after leaving vim',
    callback = function()
        vim.cmd('set guicursor=a:block-Cursor')
    end,
})
