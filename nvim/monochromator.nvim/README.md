# Monochromator.nvim

A Neovim port of [Monochromator](https://codeberg.org/beem/monochromator) - a minimalist monochrome theme for VS Code by Josias Beem.

This is the **Light Amber** variant: everything is black/grey except strings and literals which use an amber accent colour.

## Philosophy

The theme follows a monochrome philosophy to reduce visual distractions:
- **Black**: All code (keywords, functions, types, variables, operators)
- **Grey**: Comments (italic), line numbers, UI elements
- **Amber** (`#e66100`): Strings, numbers, constants, escape sequences
- **Semantic colours**: Only for diagnostics (errors, warnings) and git status

## Installation

### lazy.nvim

```lua
{
  "your-username/monochromator.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme monochromator")
  end,
}
```

### Manual

Copy the `lua/monochromator` folder to `~/.config/nvim/lua/` and the `colors/monochromator.lua` file to `~/.config/nvim/colors/`.

Then add to your config:

```lua
vim.cmd("colorscheme monochromator")
```

## Supported Plugins

- Treesitter
- LSP semantic tokens
- Diagnostics
- GitSigns
- Telescope
- nvim-tree / neo-tree
- indent-blankline
- nvim-cmp
- which-key
- lazy.nvim

## Customisation

You can access the colour palette:

```lua
local colors = require("monochromator").colors
```

## Credits

- Original theme by [Josias Beem](https://codeberg.org/beem/monochromator) (MIT License)
- Neovim port maintains the same design philosophy
