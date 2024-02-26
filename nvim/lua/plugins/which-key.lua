local ts_builtin = require('telescope.builtin')

local wk = require('which-key')

local mappings = {
  -- nvim-tree
  ['<leader>ne'] = { '<cmd>NvimTreeFindFile<CR>', 'Nvim-tree: find file in tree' },
  ['<leader>nn'] = { '<cmd>NvimTreeToggle<CR>',   'Nvim-tree: toggle' },

  -- telescope
  ['<leader>ff'] = { ts_builtin.find_files,  'Telescope: find file' },
  ['<leader>fn'] = { ts_builtin.grep_string, 'Telescope: grep sting under cursor' },
  ['<leader>fp'] = {
    function()
      ts_builtin.grep_string({ search = vim.fn.input('Grep > ') });
    end,
    'Telescope: grep'
  },

  -- harpoon
  ['<C-e>']      = 'Harpoon: menu',
  ['<leader>hh'] = 'Harpoon: append',

  -- barbar
  ['<leader>tT'] = { '<cmd>BufferCloseAllButVisible<CR>', 'barbar: close all buffer except visible' },
  ['<leader>tt'] = { '<cmd>BufferClose<CR>' ,             'barbar: close current buffer' },
  ['<leader>tn'] = { '<cmd>BufferPrevious<CR>',           'barbar: previous buffer' },
  ['<leader>te'] = { '<cmd>BufferNext<CR>',               'barbar: next buffer' },

  -- fugitive
  ['<leader>gs'] = { vim.cmd.Git, 'Fugitive: git' },
}

wk.register(mappings)
