--Set the visual block mode hotkeys. This is because <C-v> in normal mode is used for paste in terminal.  
vim.keymap.set('n', '<C-q>', '<C-v>', { noremap = true, silent = true })

-- vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git find files' })

-- Set the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Toggle Undotree -move to undotree.lua
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Grep for a string
vim.keymap.set('n', '<leader>ps', function()
  local builtin = require('telescope.builtin')
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end);

-- Telescope find
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- NOTE: Semicolon is required above to separate the preceding function from the next keymap definition.

-- Set the color cycle key
local colors = {
  "rose-pine-main",
  "rose-pine-moon",
--  "rose-pine-dawn",
  "rose-pine",
--  "evening",
  "habamax",
  "default",
--  "peachpuff",
--  "lunaperche",
--  "delek",
--
--  "darkblue",
  "unokai",
  "torte",
  "wildcharm",
  "koehler",
  "pablo",
--  "ron",
--  "blue",
--  "desert",
  "sorbet",
--  "retrobox",
--  "shine",
  "industry",
  "murphy",
--  "morning",
--  "zellner",
  "zaibatsu",
  "elflord",
--  "quiet",
  "slate",
}
local current_color_index = 1

function CycleColors()
  current_color_index = current_color_index + 1
  if current_color_index > #colors then
    current_color_index = 1
  end
  local new_scheme = colors[current_color_index]
  vim.cmd("colorscheme " .. new_scheme)
  vim.api.nvim_echo({{"colorscheme " .. new_scheme}}, true, {})
end

vim.keymap.set('n', '<leader>l', CycleColors)

