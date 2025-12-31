-- Set <Space> as leader before anything else
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap Lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins (modules under lua/plugins)
require("lazy").setup("plugins", {
  install = { colorscheme = { "github_dark_default", "habamax", "default" } },
  checker = { enabled = false },
})

-- Core settings and keymaps
require("options")
require("keymaps")
