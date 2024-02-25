local ts_builtin = require('telescope.builtin')
local wk = require('which-key')

local mappings = {
    -- telescope
    ["<leader>ff"] = { ts_builtin.find_files, "Telescope: find file" },
    ["<leader>fn"] = { ts_builtin.grep_string, "Telescope: grep sting under cursor" },
    ["<leader>fp"] = {
        function()
            ts_builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end,
        "Telescope: grep"
    },

    -- nvim-tree
    ["<leader>ne"] = { ":NvimTreeFindFile<CR>", "Nvim-tree: find file in tree" },
    ["<leader>aa"] = { ":NvimTreeToggle<CR>", "Nvim-tree: toggle" },
}

wk.register(mappings)
