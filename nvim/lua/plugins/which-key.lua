local ts_builtin = require("telescope.builtin")

local wk = require("which-key")

--local mappings =

wk.add({
  -- nvim-tree
  { "<leader>ne", "<cmd>NvimTreeFindFile<CR>", desc = "Nvim-tree: find file in tree" },
  { "<leader>nn", "<cmd>NvimTreeToggle<CR>",   desc = "Nvim-tree: toggle" },

  -- telescope
  { "<leader>ff", ts_builtin.find_files,  desc = "Telescope: find file" },
  { "<leader>fn", ts_builtin.grep_string, desc = "Telescope: grep string under cursor" },
  { "<leader>fp",
    function()
      ts_builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end,
    desc = "Telescope: grep"
  },

  -- harpoon
  { "<C-e>",      desc = "Harpoon: menu" },
  { "<leader>hh", desc = "Harpoon: append" },

  -- barbar
  { "<leader>tT",  "<cmd>BufferCloseAllButVisible<CR>", desc = "barbar: close all buffer except visible" },
  { "<leader>tt",  "<cmd>BufferClose<CR>" ,             desc = "barbar: close current buffer" },
  { "<leader>tn",  "<cmd>BufferPrevious<CR>",           desc = "barbar: previous buffer" },
  { "<leader>te",  "<cmd>BufferNext<CR>",               desc = "barbar: next buffer" },

  -- fugitive
  { "<leader>gs", vim.cmd.Git, desc = "Fugitive: git" },
})

-- wk.register(mappings)
