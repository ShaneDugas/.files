require ("zorg")
require ("plugin")
colorscheme=mine
print ("hello")

vim.o.signcolumn = yes
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap =false
vim.tabstop = 4


vim.keymap.set('n','<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n','<leader>w', ':write<CR>')
vim.keymap.set('n','<leader>q', ':quit<CR>')


