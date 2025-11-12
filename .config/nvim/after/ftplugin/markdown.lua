-- ============================================================================
-- BEGIN: Markdown-specific Configuration - Added 11/10/25 by SmD 
-- ============================================================================
-- This file is automatically loaded when opening markdown files (*.md)
-- ftplugin = filetype plugin (runs only for markdown files)

-- Enable text wrapping for markdown files (makes reading easier)
vim.opt_local.wrap = true

-- Set line breaking at word boundaries (don't break in the middle of words)
vim.opt_local.linebreak = true

-- Set text width for automatic line wrapping (0 = disabled, set to 80 or 100 if you want hard wraps)
vim.opt_local.textwidth = 0

-- Concealment settings - hide markdown syntax and show formatted text
-- Level 0 = show all syntax, Level 2 = hide most syntax (like **, *, [], etc.)
vim.opt_local.conceallevel = 2

-- Conceal text even on the line with the cursor
-- Set to 'n' to show syntax on cursor line, '' to always conceal
vim.opt_local.concealcursor = ''

-- Enable spell checking for markdown files
vim.opt_local.spell = true
vim.opt_local.spelllang = 'en_us'

-- Indent settings for markdown (2 spaces is common for nested lists)
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.expandtab = true

-- Show line numbers (relative for easier navigation)
vim.opt_local.number = true
vim.opt_local.relativenumber = true

-- ============================================================================
-- END: Markdown-specific Configuration
-- ============================================================================
