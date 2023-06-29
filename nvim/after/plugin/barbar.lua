require('barbar').setup {
    sidebar_filetypes = {
        NvimTree = true,
    }
}

local wk = require('which-key')
wk.register({
    ["<leader>tt"] = { "<Cmd>BufferClose<CR>" ,   "barbar: close buffer" },
    ["<leader>tn"] = { "<Cmd>BufferPrevious<CR>", "barbar: previous buffer" },
    ["<leader>te"] = { "<Cmd>BufferNext<CR>",     "barbar: next buffer" },
})
