require('lualine').setup({
  options = { theme = 'ayu_light' },
  sections = {
    lualine_a = {},
    lualine_b = { 'branch', 'diagonistics' },
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = {},
    lualine_y = {},
  },
  inactive_sections = {
    lualine_c = { { 'filename', path = 1 } },
  },
})
