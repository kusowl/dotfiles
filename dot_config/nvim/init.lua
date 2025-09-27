require("config.lazy")
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

-- repeat last f, t, movements
vim.keymap.set('n', '\'', ';')

-- do not open folds when navigating
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')

-- Sync clipboiard
vim.opt.clipboard = 'unnamedplus'

-- make search case insenstitve
vim.opt.ignorecase = true

-- Multiline editing
-- Instert multiple carret in start of every selected line -> mi
-- Instert multiple carret in end of every selected line -> ma

-- Hover for quick documentation => gh or shift-k
-- Format selected region -> select region then =
-- Goto the delcartion of the function -> gd,
-- find the usages of the function, gd in the delcartion

-- Setup lazy.nvim
require("lazy").setup({
    spec = { -- import your plugins
    {
        import = "plugins" -- this means i have to specify plugins in ~/.config/nvim/lua/plugins/foo.lua
    }},
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = {
        colorscheme = {"habamax"}
    },
    -- automatically check for plugin updates
    checker = {
        enabled = true
    }
})
