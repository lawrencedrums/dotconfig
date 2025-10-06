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
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      gitbrowse = { enabled = false },
      lazygit = { enabled = false },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },

{
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require("claude-code").setup({
      window = {
          position = "float",
          float = {
          width = "30%",      -- Take up 90% of the editor width
          height = "100%",     -- Take up 90% of the editor height
          row = "center",     -- Center vertically
          col = "90%",     -- Center horizontally
          relative = "editor",
          border = "double",  -- Use double border style
        },
      },
    })
  end
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

  -- git
  'lewis6991/gitsigns.nvim',

  -- navigation
  'chentoast/marks.nvim',

  -- ui
  'folke/which-key.nvim',
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
require('plugins.lsp')
require('plugins.marks')
require('plugins.nvim-cmp')
require('plugins.which-key')
