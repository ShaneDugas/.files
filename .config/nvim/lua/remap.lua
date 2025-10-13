



-- Set the leader key
vim.g.mapleader = " "

-- Move selected lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Open netrw (file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Source the current file
vim.keymap.set('n','<leader>r', ':update<CR> :source<CR>')

-- Write the current file
vim.keymap.set('n','<leader>w', ':write<CR>')

-- Quit
vim.keymap.set('n','<leader>q', ':quit<CR>')

-- Yank to system clipboard
vim.keymap.set({'n', 'v', 'x' }, '<leader>y', '"+y')

-- Delete to system clipboard
vim.keymap.set({'n', 'v', 'x' }, '<leader>d', '"+d')

-- Center screen on movement
vim.keymap.set({'n', 'v', 'x' }, '<C-f>', '<C-f>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-b>', '<C-b>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-d>', '<C-d>zz')
vim.keymap.set({'n', 'v', 'x' }, '<C-u>', '<C-u>zz')

-- Insert blank lines
vim.keymap.set('n','<leader>o', 'o<esc>')
vim.keymap.set('n','<leader>O', 'O<esc>')

-- Open tmux sessionizer (Note: This was overriding your <C-f> mapping above)
-- I've changed it to <leader>f to avoid the conflict.
vim.keymap.set('n','<leader>f', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- Toggle Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Grep for a string
vim.keymap.set('n', '<leader>ps', function()
  local builtin = require('telescope.builtin')
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
