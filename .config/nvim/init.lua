require ("zorg")
print ("moving to 'require zorg'")
require ("plugin")
print (" moving into plugin" )

--colorscheme=mne
print ("hello")

vim.g.mapleader = " "
vim.o.signcolumn = yes
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap =false
vim.tabstop = 4


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n','<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n','<leader>w', ':write<CR>')
vim.keymap.set('n','<leader>q', ':quit<CR>')

vim.keymap.set({'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({'n', 'v', 'x' }, '<leader>d', '"+y<CR>')
