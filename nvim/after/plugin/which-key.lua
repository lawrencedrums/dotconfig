local wk = require('which-key')

local mappings = {
    ["<leader>ne"] = { ":NvimTreeFindFile<CR>", "Nvim-tree: find file in tree" },
    ["<leader>nt"] = { ":NvimTreeToggle<CR>", "Nvim-tree: toggle" }
}

wk.register(mappings)
