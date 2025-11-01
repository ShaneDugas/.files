return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
--**************Telescope****************************************************
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
--**************Telescope****************************************************

--**************Color****************************************************
-- lua/plugins/rose-pine.lua
use { 'rose-pine/neovim', as = 'rose-pine',}
--**************Color****************************************************

--**************Treesitter****************************************************
use 'nvim-treesitter/nvim-treesitter'
use 'nvim-treesitter/playground'
--**************Treesitter****************************************************

--**************Undotree*******************************************************
use 'mbbill/undotree'
--**************Undotree*******************************************************

--**************Harpoon********************************************************
use 'theprimeagen/harpoon'
--**************Harpoon********************************************************

--**************LSP************************************************************
use 'neovim/nvim-lspconfig'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
--**************LSP************************************************************

--**************Git Stuff******************************************************
use 'tpope/vim-fugitive'
--**************Git Stuff******************************************************

--**************Make comments with gcc*****************************************
use 'tpope/vim-commentary'---vim--commentary
--*****************************************************************************

--**************Wrap Stuff*****************************************************
use 'tpope/vim-surround'
--**************Wrap Stuff*****************************************************

--**************Wrap Stuff*****************************************************
use 'tpope/vim-repeat'  -- Uncomment this line to enable vim-repeat
--**************Wrap Stuff*****************************************************

--**************Autocompletion plugins*****************************************
use 'hrsh7th/nvim-cmp'               -- The completion plugin itself
use 'hrsh7th/cmp-nvim-lsp'           -- LSP source for nvim-cmp
use 'hrsh7th/cmp-buffer'             -- Buffer words source for nvim-cmp
use 'hrsh7th/cmp-path'               -- File path source for nvim-cmp
use 'L3MON4D3/LuaSnip'               -- Snippet engine 
use 'saadparwaiz1/cmp_luasnip'       -- Snippet source for nvim-cmp
--**************Autocompletion plugins*****************************************
end)

