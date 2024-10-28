-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use { 
    'hrsh7th/nvim-cmp',
    config = function()
	require("nvim_cmp")
    end,
    requires = { 'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      }
   }
  use {
    "folke/tokyonight.nvim",
    config = function ()
      vim.cmd[[colorscheme tokyonight]]
    end
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
        require("indentBlank_set")
    end
  }
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
            
  use {
    'nvim-tree/nvim-tree.lua',
    config = function ()
        require("fileTree")
    end,
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
end)
