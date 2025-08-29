require ("zorg")
print ("moving to 'require zorg'")
require ("plugin")
print (" moving into plugin" )

colorscheme=mine
print ("hello")

--Leader key
vim.g.mapleader = " "

vim.o.signcolumn = yes

--Numbered Lines
vim.o.number = true

--Relative numbered lines
vim.o.relativenumber = true

--Line wrap
vim.o.wrap =false

--Supposed to be tab spaces but not working
vim.tabstop = 4
--#######################REMAPS####################################
--This is for moving selections then in Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Open netrw window
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Run :Source on the current file
vim.keymap.set('n','<leader>o', ':update<CR> :source<CR>')

--Write the current file to disk
vim.keymap.set('n','<leader>w', ':write<CR>')

--:Quit
vim.keymap.set('n','<leader>q', ':quit<CR>')

vim.keymap.set({'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({'n', 'v', 'x' }, '<leader>d', '"+y<CR>')

--Center screen when pressing C-f and C-b
vim.keymap.set({'n', 'v', 'x' }, '<C-f>', '<C-f>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-b>', '<C-b>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-d>', '<C-d>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-u>', '<C-u>zz')


--vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
--    set clipboard+=unnamedplus
