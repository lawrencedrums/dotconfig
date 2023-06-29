local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>fn', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

local wk = require('which-key')

local mappings = {
    ["<leader>ff"] = { builtin.find_files, "Telescope: find file" },
    ["<leader>fg"] = { builtin.git_files,  "Telescope: find in git file" },
    ["<leader>fn"] = {
        function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end,
        "Telescope: grep"
    },
}

wk.register(mappings)
