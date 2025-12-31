return {
  "karb94/neoscroll.nvim",
  opts = {
    mappings = {
      '<C-b>',
      '<C-f>',
      '<C-y>',
      '<C-e>',
      'zt',
      'zz',
      'zb',
    },
    duration_multiplier = 0.5,
  },
  config = function(_, opts)
    local neoscroll = require("neoscroll")
    neoscroll.setup(opts)

    local keymap = {
      ["<C-l>"] = function() neoscroll.ctrl_u({ duration = 200 }) end,
      ["<C-h>"] = function() neoscroll.ctrl_d({ duration = 200 }) end,
      ["zz"]    = function() neoscroll.zz({ half_win_duration = 200 }) end;
    }
    local modes = { 'n', 'v', 'x' }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
