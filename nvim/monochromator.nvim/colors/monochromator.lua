-- Monochromator Light for Neovim
-- Load with: colorscheme monochromator
--
-- To change accent, set before loading:
--   vim.g.monochromator_accent = "ruby"
--
-- Available accents: amber, ruby, sulfur, emerald, aquamarine, amethyst, plain
-- Or use any hex colour: vim.g.monochromator_accent = "#ff5500"

require("monochromator").setup({
  accent = 'amber',
  -- accent = vim.g.monochromator_accent,
})

