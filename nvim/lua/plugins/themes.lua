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
    dir = "~/.config/nvim/monochromator.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme monochromator")
    end,
  },
}
