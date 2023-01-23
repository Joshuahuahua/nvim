-- Make sure packer is installed on first launch
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer
  use {
    'wbthomason/packer.nvim'
  }



  -- ### Navigation
  -- Search
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    config = function() require('plugins.config.telescope') end,
    requires = {
      { 'nvim-lua/plenary.nvim' }
    }
  }

  -- File Explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      { 'kyazdani42/nvim-web-devicons' },
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }



  -- ### Aethetics
  -- Editor Theme
  use {
    'folke/tokyonight.nvim',
    config = function() vim.cmd [[colorscheme tokyonight-storm]] end
  }

  -- tree-sitter Interface
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }
  -- tree-sitter Theme
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require("plugins.config.blankline") end
  }

  -- Statusline Theme
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require("plugins.config.lualine") end
  }



  -- ### Engine
  -- Language Server Pack
  use {
    'VonHeikemen/lsp-zero.nvim',
    config = function() require('plugins.config.lsp') end,
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Language Server Pack
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  -- Linter
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function() require("plugins.config.trouble") end
  }

  -- Commenter
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  use {
    'github/copilot.vim',
  }

  -- Auto install packer if not detected
  if packer_bootstrap then
    require('packer').sync()
  end
end)
