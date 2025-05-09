-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ' '

vim.keymap.set('n', 'Q', '<nop>')

-- jump up and down for Colemak Mod-DH
vim.keymap.set('n', '<C-h>', '<C-d>')
vim.keymap.set('n', '<C-l>', '<C-u>')
