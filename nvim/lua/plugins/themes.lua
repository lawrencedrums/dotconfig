return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({})
      -- vim.cmd("colorscheme github_light")
    end
  },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.zenbones_italic_comments = false
      vim.g.zenbones_italic_strings = false
      -- vim.g.zenbones_darken_comments = 45
      vim.cmd.colorscheme('zenbones')
      vim.o.background = 'light'
    end
  },
}
