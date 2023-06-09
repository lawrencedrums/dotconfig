require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    local wk = require('which-key')
    -- map('n', '<leader>yD', function() gs.diffthis('~') end)
    local mappings = {
        ["<leader>gb"] = { gs.toggle_current_line_blame, "Gitsigns: toggle blame" },
        ["<leader>gy"] = { gs.toggle_signs,              "Gitsigns: toggle" },
        ["<leader>gt"] = { gs.diffthis,                  "Gitsigns: diffthis" },
        ["<leader>gT"] = {
            function()
                gs.diffthis('~1')
            end,
            "Gitsigns: diff last commit",
        },
    }

    wk.register(mappings)
  end
}
