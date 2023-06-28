local wk = require('which-key')

local mappings = {
    ["<leader>ff"] = {"", "Find file" },
    ["<leader>fn"] = {"", "Grep" },
    ["<leader>ne"] = {"", "Nvim-tree: find file" },
    ["<leader>yb"] = {"", "Gitsigns: toggle blame" },
    ["<leader>yd"] = {"", "Gitsigns: diffthis" },
    ["<leader>yy"] = {"", "Gitsigns: toggle" },
}

wk.register(mappings)
