--Clipboard Shit---
-- vim.o.clipboard=unnamed,unnamedplus  -- Commented by Claude Code (2025-11-01)

-- ============================================================================
-- BEGIN: Claude Code - OSC 52 clipboard provider (2025-11-01)
-- ============================================================================
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}
vim.opt.clipboard = 'unnamedplus'
-- ============================================================================
-- END: Claude Code - OSC 52 clipboard provider
-- ============================================================================

-- /home/smd/.config/nvim/lua/options.lua
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"

--Backup and undo settings
vim.opt.backupdir = "/home/smd/backup//"  -- Double slashes to avoid backup file name collissions
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.backupcopy = "yes"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"

-- Add timestamp as extension for backup files
vim.api.nvim_create_autocmd('BufWritePre', {
  group = vim.api.nvim_create_augroup('timestamp_backupext', { clear = true }),
  desc = 'Add timestamp to backup extension',
  pattern = '*',
  callback = function()
    vim.opt.backupext = '-' .. vim.fn.strftime('%Y%m%d%H%M%S')
  end,
})

vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = "/home/smd/backup/undodir//"
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000


-- Disable bells
vim.opt.belloff = all -- Disable error bells
vim.opt.errorbells = false
vim.opt.visualbell = true -- Enable visual bell instead of sound

-- Show whitespace characters
vim.opt.listchars = {
  space = '·',
  tab = '▸ ',
  eol = '↵',
  trail = '•',
  extends = '>',
  precedes = '<',
  nbsp = '⍽',
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
vim.opt.colorcolumn = "3,7,80"
