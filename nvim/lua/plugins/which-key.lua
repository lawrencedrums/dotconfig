local wk = require('which-key')

local mappings = {
    ["<leader>ne"] = { ":NvimTreeFindFile<CR>", "Nvim-tree: find file in tree" },
    ["<leader>aa"] = { ":NvimTreeToggle<CR>", "Nvim-tree: toggle" },
}

wk.register(mappings)
