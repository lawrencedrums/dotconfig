require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    map('n', '<leader>yy', gs.toggle_signs)
    map('n', '<leader>yb', gs.toggle_current_line_blame)
    map('n', '<leader>yd', gs.diffthis)
    map('n', '<leader>yD', function() gs.diffthis('~') end)
  end
}
