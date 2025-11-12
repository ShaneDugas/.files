-- ============================================================================
-- BEGIN: Treesitter Configuration - Added 11/10/25 by SmD 
-- ============================================================================
-- Treesitter provides better syntax highlighting and code understanding
-- by parsing code into an abstract syntax tree (AST)
-- Run :TSInstall <parser_name> to manually install parsers
-- Run :TSInstallInfo to see all available parsers and their status

require('nvim-treesitter.configs').setup({
  -- List of parsers to install automatically
  ensure_installed = {
    "c",               -- C language support
    "lua",             -- Lua language support
    "vim",             -- Vimscript support
    "vimdoc",          -- Vim help documentation
    "markdown",        -- Markdown file support (for *.md files)
    "markdown_inline", -- Inline markdown (for code blocks, links, etc.)
    "python",          -- Python language support
    "bash",            -- Bash/shell script support
    "json",            -- JSON file support
    "yaml",            -- YAML file support (useful for Ansible playbooks)
    "html",            -- HTML support
    "css",             -- CSS support
    "javascript",      -- JavaScript support
    "typescript",      -- TypeScript support
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Set to true to auto-install parsers for new file types
  auto_install = true,

  -- Enable syntax highlighting using treesitter
  -- This provides much better and more accurate highlighting than vim regex
  highlight = {
    enable = true,                              -- Enable treesitter-based highlighting
    additional_vim_regex_highlighting = false,  -- Disable vim's regex highlighting (treesitter is better)
  },

  -- Enable treesitter-based indentation
  -- This provides smarter auto-indentation based on language syntax
  indent = {
    enable = true,  -- Enable treesitter-based indentation
  },

  -- Enable incremental selection based on treesitter nodes
  -- Allows you to incrementally select larger syntax elements
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",    -- Start incremental selection in normal mode
      node_incremental = "grn",  -- Increment to the next node
      scope_incremental = "grc", -- Increment to the next scope
      node_decremental = "grm",  -- Decrement to the previous node
    },
  },
})
-- ============================================================================
-- END: Treesitter Configuration
-- ============================================================================
