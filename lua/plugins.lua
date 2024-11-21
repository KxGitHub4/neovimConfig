
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- mason lsp manage
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  -- cmp code auto-completion function
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
      'rafamadriz/friendly-snippets',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
      }
  }
  -- tokyonight theme
  use {
    "folke/tokyonight.nvim",
    config = function ()
      vim.cmd[[colorscheme tokyonight]]
    end
  }
  -- indent and code block  
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
        require("indentBlank_set")
    end
  }
  -- formate plugin
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
  -- a tab bar function
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use {'romgrk/barbar.nvim'
  }
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
  use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
          require("nvim-autopairs").setup {}
      end
  }
  use {'nvim-lualine/lualine.nvim',
    config = function ()
        require('lualineConfig')
    end
  }
  use 'sbdchd/neoformat'
  use {'folke/flash.nvim',
    config = function ()
       require("flash").setup({
         modes = {
             search = {
                 enabled = true,
             }
         },
         jump = {
             autojump = true,
         }
       })
    end
  }
end)
