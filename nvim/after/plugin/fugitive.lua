-- vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local wk = require('which-key')
wk.register({
    ["<leader>gs"] = { vim.cmd.Git, "Fugitive: git" },
})
