local sn = require("snacks")

local wk = require("which-key")

wk.add({
  -- snacks.picker & explorer
  { "<leader><space>", function() sn.picker.smart() end,                desc = "Snacks: smart find file" },
  { "<leader>,", function() sn.picker.buffers() end,                desc = "Buffers" },
  { "<leader>:", function() sn.picker.command_history() end,        desc = "Command History" },
  { "<leader>nh", function() sn.picker.notifications() end,         desc = "Notification History" },
  { "<leader>nn", function() sn.explorer() end,                     desc = "File Explorer" },
  { "<leader>ne", function() sn.explorer.reveal() end,              desc = "Find file in Explorer" },

  -- snacks.find
  { "<leader>ff", function() sn.picker.files() end,                 desc = "Find Files" },
  { "<leader>fr", function() sn.picker.recent() end,                desc = "Recent" },
  -- { "<leader>fc", function() sn.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
  -- { "<leader>fg", function() sn.picker.git_files() end,          desc = "Find Git Files" },
  -- { "<leader>fp", function() sn.picker.projects() end,           desc = "Projects" },

  -- snacks.grep
  { "<leader>fp", function() sn.picker.grep() end,                  desc = "Grep" },
  { "<leader>fn", function() sn.picker.grep_word() end,             desc = "Visual selection or word", mode = { "n", "x" } },
  { "<leader>sb", function() sn.picker.lines() end,                 desc = "Buffer Lines" },
  { "<leader>sB", function() sn.picker.grep_buffers() end,          desc = "Grep Open Buffers" },

  -- snacks.LSP
  { "gd", function() sn.picker.lsp_definitions() end,               desc = "Snacks: Goto Definition" },
  { "gD", function() sn.picker.lsp_declarations() end,              desc = "Goto Declaration" },
  { "gr", function() sn.picker.lsp_references() end, nowait = true, desc = "References" },
  { "gI", function() sn.picker.lsp_implementations() end,           desc = "Goto Implementation" },
  { "gy", function() sn.picker.lsp_type_definitions() end,          desc = "Goto T[y]pe Definition" },
  { "<leader>ss", function() sn.picker.lsp_symbols() end,           desc = "LSP Symbols" },
  -- { "<leader>sS", function() sn.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },

  -- snacks.git
  -- { "<leader>gg", function() sn.lazygit.open() end, desc = "Lazygit" },

  -- barbar
  { "<leader>tT",  "<cmd>BufferCloseAllButVisible<CR>", desc = "barbar: close all buffer except visible" },
  { "<leader>tt",  "<cmd>BufferClose<CR>" ,             desc = "barbar: close current buffer" },
  { "<leader>tn",  "<cmd>BufferPrevious<CR>",           desc = "barbar: previous buffer" },
  { "<leader>te",  "<cmd>BufferNext<CR>",               desc = "barbar: next buffer" },
})
