


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
-- lua/plugins/rose-pine.lua
use { 'rose-pine/neovim', as = 'rose-pine',}

use 'nvim-treesitter/nvim-treesitter'
use 'nvim-treesitter/playground'
use 'mbbill/undotree'
use 'theprimeagen/harpoon'
use 'neovim/nvim-lspconfig'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'

use 'tpope/vim-fugitive'
use 'tpope/vim-commentary'---vim--commentary
use 'tpope/vim-surround'
-- Autocompletion plugins
use 'hrsh7th/nvim-cmp'               -- The completion plugin itself
use 'hrsh7th/cmp-nvim-lsp'           -- LSP source for nvim-cmp
use 'hrsh7th/cmp-buffer'             -- Buffer words source for nvim-cmp
use 'hrsh7th/cmp-path'               -- File path source for nvim-cmp
use 'saadparwaiz1/cmp_luasnip'       -- Snippet source for nvim-cmp
use 'L3MON4D3/LuaSnip'               -- Snippet engine 
end)

