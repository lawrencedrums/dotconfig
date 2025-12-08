local opt = vim.opt

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Hint: use `:h <option>` to figure out the meaning if needed
opt.clipboard = 'unnamedplus'   -- use system clipboard 
opt.completeopt = {'menu', 'menuone', 'noselect'} -- configure completion menu behavior
opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
opt.tabstop = 4                 -- number of visual spaces per TAB
opt.softtabstop = 4             -- number of spacesin tab when editing
opt.shiftwidth = 4              -- insert 4 spaces on a tab
opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
opt.number = true               -- show absolute number
opt.relativenumber = true       -- add numbers to each line on the left side
opt.cursorline = false          -- highlight cursor line underneath the cursor horizontally
opt.splitbelow = true           -- open new vertical split bottom
opt.splitright = true           -- open new horizontal splits right
opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
-- opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint
opt.signcolumn = 'yes:2'        -- always show sign column with width of 1

-- Searching
opt.incsearch = true            -- search as characters are entered
opt.hlsearch = true             -- DO highlight matches
opt.ignorecase = true           -- ignore case in searches by default
opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Diagnostic
vim.diagnostic.config({
  virtual_text = false,         -- disable inline diagnostic text
})

opt.breakindent = true          -- wrapped lines will continue visually indented
opt.undofile = true             -- save undo history to a file
opt.updatetime = 250            -- decrease update time for better responsiveness
opt.scrolloff = 8               -- minimum number of lines to keep above and below cursor
opt.sidescrolloff = 8           -- minimum number of columns to keep left and right of cursor

vim.opt.wildignore:append({
  "blue.vim",
  "darkblue.vim",
  "delek.vim",
  "desert.vim",
  "elflord.vim",
  "evening.vim",
  "industry.vim",
  "habamax.vim",
  "koehler.vim",
  "lunaperche.vim",
  "morning.vim",
  "murphy.vim",
  "pablo.vim",
  "peachpuff.vim",
  "quiet.vim",
  "ron.vim",
  "shine.vim",
  "slate.vim",
  "sorbet.vim",
  "retrobox.vim",
  "torte.vim",
  "wildcharm.vim",
  "zaibatsu.vim",
  "zellner.vim",
  -- zenbones themes,
  "vimbones.vim",
  "vim.vim",
  "unokai.vim",
  "seoulbones.vim",
  "rosebones.vim",
  "randombones.lua", "randombones_light.lua", "randombones_dark.lua",
  "neobones.vim",
  "duckbones.vim",
  "forestbones.vim",
  "tokyobones.vim",
})
