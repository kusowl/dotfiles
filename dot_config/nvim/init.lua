-- leader
vim.g.mapleader = ' '

-- open config file
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- save file
vim.keymap.set('n', '<leader>s', ':w<CR>', {
    noremap = true
})

-- paste without overwrite
vim.keymap.set('v', 'p', 'P')
