-- /home/smd/.config/nvim/lua/options.lua
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"

-- Show whitespace characters
vim.opt.listchars = {
  space = '·',
  tab = '▸ ',
  eol = '↵',
  trail = '•',
  extends = '>',
  precedes = '<'
}
vim.opt.list = true -- Enable showing listchars
-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.o.signcolumn = 'yes'

-- Auto-read files that have been changed outside of Neovim
vim.o.autoread = true

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Line wrap
vim.o.wrap = false
vim.o.showbreak = ">"

-- Tab settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Ruler settings
vim.opt.ruler = true
vim.opt.rulerformat = "%l,%c %= %V %= %P"
vim.opt.colorcolumn = "80"
