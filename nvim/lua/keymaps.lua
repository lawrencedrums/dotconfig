local map = vim.keymap.set

map('n', 'Q', '<nop>')

-- jump up and down for Colemak Mod-DH (disabled for neoscroll)
-- vim.keymap.set('n', '<C-h>', '<C-d>')
-- vim.keymap.set('n', '<C-l>', '<C-u>')

-- Better defaults
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

local opts = { noremap = true, silent = true }
map('n', '<leader>e', vim.diagnostic.open_float, opts)

-- Quick save/quit
-- map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
-- map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- File explorer
map("n", "<leader>nn", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>ne", "<cmd>NvimTreeFindFile<CR>", { desc = "Find file in file explorer" })

-- Telescope
local builtin = require('telescope.builtin')
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fp", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
map("n", "<leader>fn", builtin.grep_string, { desc = "Find word under cursor" })
map("n", "<leader>ll", function()
  builtin.colorscheme({
    enable_preview = true,
    ignore_builtins = true,
  })
end, { desc = "Colorscheme" })
-- map("n", "<tab>", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })

-- Buffers barbar
map("n", "<leader>tT",  "<cmd>BufferCloseAllButVisible<CR>", { desc = "barbar: close all buffer except visible" })
map("n", "<leader>tt",  "<cmd>BufferClose<CR>" ,            { desc = "barbar: close current buffer" })
map("n", "<leader>tn",  "<cmd>BufferPrevious<CR>",           { desc = "barbar: previous buffer" })
map("n", "<leader>te",  "<cmd>BufferNext<CR>",               { desc = "barbar: next buffer" })

-- Toggle colorscheme
-- map("n", "<leader>ll", function()
--   local current = vim.g.colors_name
--   if current == "github_light" then
--     vim.cmd("colorscheme github_dark_default")
--   else
--     vim.cmd("colorscheme github_light")
--   end
-- end, { desc = "Toggle light/dark theme" })
