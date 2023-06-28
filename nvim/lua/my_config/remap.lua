vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>ne", ":NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>ne", ":NvimTreeFindFile<CR>")
-- vim.keymap.set("n", "<leader>ne", vim.cmd.Ex)

vim.keymap.set("n", "<C-h>", "<C-d>zz")
vim.keymap.set("n", "<C-l>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
