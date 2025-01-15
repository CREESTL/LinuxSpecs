-- Remove invalid characters after pasting from buffer
vim.api.nvim_create_user_command('Slash', ':%s/\r/', {})
