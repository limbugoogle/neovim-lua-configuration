-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- If you are using Packer
  use 'shaunsingh/nord.nvim'

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

end)
