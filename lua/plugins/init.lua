-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- If you are using Packer
  
  --use 'shaunsingh/nord.nvim'
  
  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      tag = 'v1.*',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  })

  use {'nvim-treesitter/nvim-treesitter', run =  ":TSUpdate"}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
  }

  use {'folke/which-key.nvim'}

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

 use {'windwp/nvim-ts-autotag'}

 use {'p00f/nvim-ts-rainbow'}
 use {'windwp/nvim-autopairs'}

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  --For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

-- For luasnip users.
-- Plug 'L3MON4D3/LuaSnip'
-- Plug 'saadparwaiz1/cmp_luasnip'

-- For ultisnips users.
-- Plug 'SirVer/ultisnips'
-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'

-- For snippy users.
-- Plug 'dcampos/nvim-snippy'
-- Plug 'dcampos/cmp-snippy'
  use 'onsails/lspkind-nvim'
  use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
  }
  use 'norcalli/nvim-colorizer.lua'

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'lukas-reineke/indent-blankline.nvim'
  -- tag = 'release' -- To use the latest release
end)
