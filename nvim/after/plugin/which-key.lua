local wk = require('which-key')

local mappings = {
    ["<leader>ne"] = { ":NvimTreeFindFile<CR>", "Nvim-tree: find file in tree" },
}

wk.register(mappings)
