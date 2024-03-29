vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

packer.init({ max_jobs = 5 })

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope-project.nvim' }

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'tpope/vim-fugitive'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      {
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  use 'onsails/lspkind.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }

  use 'tpope/vim-surround'

  use 'windwp/nvim-autopairs'

  use 'preservim/nerdcommenter'

  use 'vim-test/vim-test'

  use 'alexghergh/nvim-tmux-navigation'

  use 'github/copilot.vim'

  use 'mhinz/vim-startify'

  use 'morhetz/gruvbox'
  use({ 'rose-pine/neovim', as = 'rose-pine' })
end)
