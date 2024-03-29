require('keymaps')
require('options')

-- install lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Your plugins
require('lazy').setup({
  -- theme
  {
    'projekt0n/github-nvim-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  -- lsp
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- auto-complete
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
  },

  -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- git
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',

  -- navigation
  'chentoast/marks.nvim',
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- ui
  'folke/which-key.nvim',
  { 'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  {
    'romgrk/barbar.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
})


-- load your lua files
require('colorscheme')
require('plugins.barbar')
require('plugins.git')
require('plugins.harpoon')
require('plugins.indent-blankline')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.marks')
require('plugins.nvim-cmp')
require('plugins.nvim-tree')
require('plugins.which-key')
