local highlight = { 'indent_line_color' }

local hooks = require('ibl.hooks')
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, 'indent_line_color', { fg = '#C8C6C3' })
end)

require('ibl').setup({
  indent = {
    char = '▏',
    highlight = highlight,
  },
  scope = {
    enabled = false,
  },
})
