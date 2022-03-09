-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      tag = 'v1.*',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  })
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    event = "BufWinEnter",
    config = "require('lualine-config')"
  }

  use {'akinsho/bufferline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  event = "BufWinEnter",
  config = "require('bufferline-config')"
  }

   use {'windwp/nvim-ts-autotag',
        event = "InsertEnter",
      after = "nvim-treesitter"}

  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}

  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    cmd = "Telescope",
    config = "require('telescope-config')"
  }

  use {
      'neovim/nvim-lspconfig',
      config = "require('lsp')"
  }
  use {'williamboman/nvim-lsp-installer'}
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

  use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}

  use'nvim-lua/plenary.nvim'

  use {'lewis6991/gitsigns.nvim', config = "require('gitsigns-config')"}

  use {"lukas-reineke/indent-blankline.nvim",
  config = "require('blankline-config')",
  event = "BufRead"
  }

  use {"terrortylor/nvim-comment", config = "require('comment-config')"}

  use {'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')"}

end)
