


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
use 'tpope/vim-fugitive'
use 'theprimeagen/harpoon'
use 'neovim/nvim-lspconfig'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
end)

