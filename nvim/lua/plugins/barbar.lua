return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    icons = {
      buffer_index = false,
      buffer_number = false,
      button = "",
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true },
        [vim.diagnostic.severity.WARN] = { enabled = false },
        [vim.diagnostic.severity.INFO] = { enabled = false },
        [vim.diagnostic.severity.HINT] = { enabled = true },
      },
      filetype = {
        enabled = true,
      },
      separator = { left = "▎", right = "" },
      modified = { button = "●" },
      pinned = { button = "", filename = true },
      inactive = { button = "×" },
    },
    maximum_padding = 1,
    minimum_padding = 1,
    maximum_length = 30,
    minimum_length = 0,
  },
  config = function(_, opts)
    require("barbar").setup(opts)

    -- Keymaps for buffer navigation
    local map = vim.keymap.set
    local opts_keymap = { noremap = true, silent = true }

    -- Move to previous/next buffer
    map("n", "<leader>tn", "<Cmd>BufferPrevious<CR>", opts_keymap)
    map("n", "<leader>te", "<Cmd>BufferNext<CR>", opts_keymap)

    -- Close buffer
    map("n", "<leader>tt", "<Cmd>BufferClose<CR>", opts_keymap)
  end,
}

