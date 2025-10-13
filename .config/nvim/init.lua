print (".config/nvim/init.lua")
print ("/nvim/init.lua = moving to 'require zorg' which is the zorg directory")
require ("zorg")
---#iset cliipboard = iunnamedplus

colorscheme=mine
--# Show whitespace chars ###########################
vim.opt.listchars = {
  space = '·',       -- Show spaces as middle dots
  tab = '▸ ',        -- Show tabs as a right-pointing triangle and a space
  eol = '↵',         -- Show end-of-line as a return arrow
  trail = '•',       -- Show trailing spaces as bullet points
  extends = '>',     -- Show 'extends' character
  precedes = '<'     -- Show 'precedes' character
}

vim.opt.list = true -- Enable showing listchars
--####################################################

--# Set search case sensitivity
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.o.signcolumn = yes

--Show background changes
vim.o.autoread = true
---------------------------------------
--Numbered Lines##########
vim.o.number = true
--Relative numbered lines##########
vim.o.relativenumber = true
----------------------------------------
--Line wrap
vim.o.wrap =false
vim.o.showbreak = ">"

--Supposed to be tab spaces but not working
vim.tabstop = 4

--SmD--Ruler adds----------------
vim.opt.ruler=true
vim.opt.rulerformat = "%l,%c %= %V %= %P"
vim.opt.colorcolumn = "80"
--#######################REMAPS####################################

--Leader key
vim.g.mapleader = " "

--This is for moving selections then in Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Open netrw window
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Run :Source on the current file
vim.keymap.set('n','<leader>r', ':update<CR> :source<CR>')

--Write the current file to disk
vim.keymap.set('n','<leader>w', ':write<CR>')

--:Quit
vim.keymap.set('n','<leader>q', ':quit<CR>')

--Yank to black hole register
vim.keymap.set({'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({'n', 'v', 'x' }, '<leader>d', '"+y<CR>')

--Center screen when pressing C-f and C-b
vim.keymap.set({'n', 'v', 'x' }, '<C-f>', '<C-f>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-b>', '<C-b>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-d>', '<C-d>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-u>', '<C-u>zz')

--Insert line below and above
vim.keymap.set('n','<leader>o', 'o<esc>')
vim.keymap.set('n','<leader>O', 'O<esc>')

--Change sessions (like alt-tab? Still need to set this one up)
vim.keymap.set('n','<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
--#    set clipboard+=unnamedplus

vim.keymap.set('n', '<leader>ps', function() 
		builtin.grep_string({ search = vim.fn.input ("Grep > ") });
		end)

