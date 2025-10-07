local map = vim.keymap.set

vim.keymap.set('n', 'Q', '<nop>')

-- jump up and down for Colemak Mod-DH
vim.keymap.set('n', '<C-h>', '<C-d>')
vim.keymap.set('n', '<C-l>', '<C-u>')

-- Better defaults
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Quick save/quit
-- map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
-- map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- File explorer
map("n", "<leader>nn", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>ne", "<cmd>NvimTreeFindFile<CR>", { desc = "Find file in file explorer" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fp", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
map("n", "<leader>fn", "<cmd>Telescope grep_string<CR>", { desc = "Find word under cursor" })
-- map("n", "<tab>", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })

-- Buffers barbar
map("n", "<leader>tT",  "<cmd>BufferCloseAllButVisible<CR>", { desc = "barbar: close all buffer except visible" })
map("n", "<leader>tt",  "<cmd>BufferClose<CR>" ,            { desc = "barbar: close current buffer" })
map("n", "<leader>tn",  "<cmd>BufferPrevious<CR>",           { desc = "barbar: previous buffer" })
map("n", "<leader>te",  "<cmd>BufferNext<CR>",               { desc = "barbar: next buffer" })

-- Toggle colorscheme
map("n", "<leader>ll", function()
  local current = vim.g.colors_name
  if current == "github_light" then
    vim.cmd("colorscheme github_dark_default")
  else
    vim.cmd("colorscheme github_light")
  end
end, { desc = "Toggle light/dark theme" })
