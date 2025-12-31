-- Monochromator Light for Neovim
-- Ported from https://codeberg.org/beem/monochromator
-- Original theme by Josias Beem, MIT License

local M = {}

-- Accent colour presets (from the original VSCode theme)
M.accents = {
  amber     = "#e66100",
  ruby      = "#e01b24",
  sulfur    = "#927e00",
  emerald   = "#017f45",
  aquamarine = "#01aacf",
  amethyst  = "#cf207e",
  plain     = "#000000",  -- no accent, fully monochrome
}

M.colors = {
  -- Base colors
  bg = "#ffffff",
  fg = "#000000",
  
  -- Greys
  grey1 = "#303030",  -- dark grey (UI text)
  grey2 = "#404040",  -- medium-dark grey
  grey3 = "#464646",  -- inactive elements
  grey4 = "#767676",  -- comments, line numbers
  grey5 = "#a2a2a5",  -- borders
  grey6 = "#d3d3d5",  -- subtle highlights
  grey7 = "#d8d8da",  -- selection, hover
  grey8 = "#f0f0f2",  -- panels, sidebars
  
  -- Semantic colors (always these, regardless of accent)
  red = "#e01b24",     -- errors, deletions
  green = "#017f45",   -- success, additions
  warning = "#e66100", -- warnings, modifications
  blue = "#2563eb",    -- info, links
  cyan = "#01aacf",
  magenta = "#cf207e",
  yellow = "#927e00",
  
  none = "NONE",
}

--- @param opts? { accent?: string }
--- opts.accent: "amber" | "ruby" | "sulfur" | "emerald" | "aquamarine" | "amethyst" | "plain" | or any hex colour
function M.setup(opts)
  opts = opts or {}
  
  -- Resolve accent colour
  local accent = opts.accent or "amber"
  if M.accents[accent] then
    accent = M.accents[accent]
  end
  -- Otherwise assume it's a hex colour like "#ff0000"
  M.colors.accent = accent
  
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.background = "light"
  vim.g.colors_name = "monochromator"
  
  local c = M.colors
  local hl = vim.api.nvim_set_hl
  
  -- Editor
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "NormalFloat", { fg = c.fg, bg = c.grey8 })
  hl(0, "FloatBorder", { fg = c.grey5, bg = c.grey8 })
  hl(0, "FloatTitle", { fg = c.grey1, bg = c.grey8 })
  hl(0, "Cursor", { fg = c.bg, bg = c.fg })
  hl(0, "CursorLine", { bg = c.grey8 })
  hl(0, "CursorColumn", { bg = c.grey8 })
  hl(0, "ColorColumn", { bg = c.grey8 })
  hl(0, "LineNr", { fg = c.grey4 })
  hl(0, "CursorLineNr", { fg = c.fg })
  hl(0, "SignColumn", { fg = c.grey4, bg = c.bg })
  hl(0, "FoldColumn", { fg = c.grey4, bg = c.bg })
  hl(0, "Folded", { fg = c.grey4, bg = c.grey8 })
  hl(0, "VertSplit", { fg = c.grey5 })
  hl(0, "WinSeparator", { fg = c.grey5 })
  
  -- Selection & Visual
  hl(0, "Visual", { bg = c.grey7 })
  hl(0, "VisualNOS", { bg = c.grey7 })
  hl(0, "Search", { bg = c.grey7 })
  hl(0, "IncSearch", { fg = c.bg, bg = c.fg })
  hl(0, "CurSearch", { fg = c.bg, bg = c.fg })
  hl(0, "Substitute", { fg = c.bg, bg = c.accent })
  
  -- Pmenu (completion menu)
  hl(0, "Pmenu", { fg = c.fg, bg = c.grey8 })
  hl(0, "PmenuSel", { fg = c.fg, bg = c.grey7 })
  hl(0, "PmenuSbar", { bg = c.grey8 })
  hl(0, "PmenuThumb", { bg = c.grey5 })
  
  -- Statusline & Tabline
  hl(0, "StatusLine", { fg = c.grey1, bg = c.grey8 })
  hl(0, "StatusLineNC", { fg = c.grey4, bg = c.grey8 })
  hl(0, "TabLine", { fg = c.grey1, bg = c.grey8 })
  hl(0, "TabLineFill", { bg = c.grey8 })
  hl(0, "TabLineSel", { fg = c.grey1, bg = c.bg })
  hl(0, "WinBar", { fg = c.grey1, bg = c.bg })
  hl(0, "WinBarNC", { fg = c.grey4, bg = c.grey8 })
  
  -- Messages
  hl(0, "ModeMsg", { fg = c.fg })
  hl(0, "MoreMsg", { fg = c.fg })
  hl(0, "Question", { fg = c.fg })
  hl(0, "WarningMsg", { fg = c.warning })
  hl(0, "ErrorMsg", { fg = c.red })
  
  -- Diff (RGBA blended with white bg)
  hl(0, "DiffAdd", { bg = "#d9ebe2" })      -- #017f45 at 15% opacity
  hl(0, "DiffChange", { bg = "#fce8d9" })   -- #e66100 at 15% opacity
  hl(0, "DiffDelete", { fg = c.red, bg = "#fcdcdd" })  -- #e01b24 at 15% opacity
  hl(0, "DiffText", { bg = "#f9d3bc" })     -- #e66100 at 30% opacity
  hl(0, "Added", { fg = c.green })
  hl(0, "Changed", { fg = c.warning })
  hl(0, "Removed", { fg = c.red })
  
  -- Spelling
  hl(0, "SpellBad", { sp = c.red, undercurl = true })
  hl(0, "SpellCap", { sp = c.accent, undercurl = true })
  hl(0, "SpellLocal", { sp = c.blue, undercurl = true })
  hl(0, "SpellRare", { sp = c.magenta, undercurl = true })
  
  -- Misc UI
  hl(0, "MatchParen", { fg = c.fg, bg = c.bg, bold = true })
  hl(0, "NonText", { fg = c.grey5 })
  hl(0, "SpecialKey", { fg = c.grey5 })
  hl(0, "Whitespace", { fg = c.grey5 })
  hl(0, "EndOfBuffer", { fg = c.grey5 })
  hl(0, "Directory", { fg = c.fg })
  hl(0, "Conceal", { fg = c.grey4 })
  hl(0, "Title", { fg = c.fg, bold = true })
  hl(0, "QuickFixLine", { bg = c.grey7 })
  
  -- ==========================================================================
  -- SYNTAX (Monochrome philosophy: everything black except strings/literals)
  -- ==========================================================================
  
  -- Comments (italic grey)
  hl(0, "Comment", { fg = c.grey4, italic = true })
  
  -- Constants & Literals (amber accent)
  hl(0, "Constant", { fg = c.accent })
  hl(0, "String", { fg = c.accent })
  hl(0, "Character", { fg = c.accent })
  hl(0, "Number", { fg = c.accent })
  hl(0, "Boolean", { fg = c.accent, bold = true })
  hl(0, "Float", { fg = c.accent })
  
  -- Everything else: black (monochrome)
  hl(0, "Identifier", { fg = c.fg })
  hl(0, "Function", { fg = c.fg })
  hl(0, "Statement", { fg = c.fg })
  hl(0, "Conditional", { fg = c.fg })
  hl(0, "Repeat", { fg = c.fg })
  hl(0, "Label", { fg = c.fg })
  hl(0, "Operator", { fg = c.fg })
  hl(0, "Keyword", { fg = c.fg })
  hl(0, "Exception", { fg = c.fg })
  hl(0, "PreProc", { fg = c.fg })
  hl(0, "Include", { fg = c.fg })
  hl(0, "Define", { fg = c.fg })
  hl(0, "Macro", { fg = c.fg })
  hl(0, "PreCondit", { fg = c.fg })
  hl(0, "Type", { fg = c.fg })
  hl(0, "StorageClass", { fg = c.fg })
  hl(0, "Structure", { fg = c.fg })
  hl(0, "Typedef", { fg = c.fg })
  hl(0, "Special", { fg = c.fg })
  hl(0, "SpecialChar", { fg = c.accent, bold = true })  -- escape sequences
  hl(0, "Tag", { fg = c.fg })
  hl(0, "Delimiter", { fg = c.fg })
  hl(0, "SpecialComment", { fg = c.grey4, italic = true })
  hl(0, "Debug", { fg = c.fg })
  hl(0, "Underlined", { fg = c.fg, underline = true })
  hl(0, "Ignore", { fg = c.grey4 })
  hl(0, "Error", { fg = c.red })
  hl(0, "Todo", { fg = c.fg, bold = true })
  
  -- ==========================================================================
  -- TREESITTER
  -- ==========================================================================
  
  -- Identifiers
  hl(0, "@variable", { fg = c.fg })
  hl(0, "@variable.builtin", { fg = c.fg })
  hl(0, "@variable.parameter", { fg = c.fg })
  hl(0, "@variable.member", { fg = c.fg })
  hl(0, "@constant", { fg = c.accent })
  hl(0, "@constant.builtin", { fg = c.accent, bold = true })
  hl(0, "@constant.macro", { fg = c.accent })
  hl(0, "@module", { fg = c.fg })
  hl(0, "@label", { fg = c.fg })
  
  -- Literals
  hl(0, "@string", { fg = c.accent })
  hl(0, "@string.documentation", { fg = c.grey4, italic = true })
  hl(0, "@string.regex", { fg = c.accent })
  hl(0, "@string.escape", { fg = c.accent, bold = true })
  hl(0, "@string.special", { fg = c.accent, bold = true })
  hl(0, "@character", { fg = c.accent })
  hl(0, "@character.special", { fg = c.accent, bold = true })
  hl(0, "@boolean", { fg = c.accent, bold = true })
  hl(0, "@number", { fg = c.accent })
  hl(0, "@number.float", { fg = c.accent })
  
  -- Types
  hl(0, "@type", { fg = c.fg })
  hl(0, "@type.builtin", { fg = c.fg })
  hl(0, "@type.definition", { fg = c.fg })
  hl(0, "@type.qualifier", { fg = c.fg })
  hl(0, "@attribute", { fg = c.fg })
  hl(0, "@property", { fg = c.fg })
  
  -- Functions
  hl(0, "@function", { fg = c.fg })
  hl(0, "@function.builtin", { fg = c.fg })
  hl(0, "@function.macro", { fg = c.fg })
  hl(0, "@function.method", { fg = c.fg })
  hl(0, "@constructor", { fg = c.fg })
  
  -- Keywords
  hl(0, "@keyword", { fg = c.fg })
  hl(0, "@keyword.function", { fg = c.fg })
  hl(0, "@keyword.operator", { fg = c.fg })
  hl(0, "@keyword.return", { fg = c.fg })
  hl(0, "@keyword.conditional", { fg = c.fg })
  hl(0, "@keyword.repeat", { fg = c.fg })
  hl(0, "@keyword.import", { fg = c.fg })
  hl(0, "@keyword.exception", { fg = c.fg })
  hl(0, "@keyword.storage", { fg = c.fg })
  
  -- Punctuation
  hl(0, "@punctuation.delimiter", { fg = c.fg })
  hl(0, "@punctuation.bracket", { fg = c.fg })
  hl(0, "@punctuation.special", { fg = c.accent, bold = true })  -- interpolation
  
  -- Comments
  hl(0, "@comment", { fg = c.grey4, italic = true })
  hl(0, "@comment.documentation", { fg = c.grey4, italic = true })
  hl(0, "@comment.error", { fg = c.red, italic = true })
  hl(0, "@comment.warning", { fg = c.warning, italic = true })
  hl(0, "@comment.todo", { fg = c.fg, bold = true })
  hl(0, "@comment.note", { fg = c.blue, italic = true })
  
  -- Markup
  hl(0, "@markup.heading", { fg = c.fg, bold = true })
  hl(0, "@markup.strong", { fg = c.fg, bold = true })
  hl(0, "@markup.italic", { fg = c.fg, italic = true })
  hl(0, "@markup.strikethrough", { fg = c.fg, strikethrough = true })
  hl(0, "@markup.underline", { fg = c.fg, underline = true })
  hl(0, "@markup.quote", { fg = c.grey4, italic = true })
  hl(0, "@markup.math", { fg = c.fg })
  hl(0, "@markup.link", { fg = c.blue, underline = true })
  hl(0, "@markup.link.label", { fg = c.blue })
  hl(0, "@markup.link.url", { fg = c.blue, underline = true })
  hl(0, "@markup.raw", { fg = c.accent })
  hl(0, "@markup.raw.block", { fg = c.fg })
  hl(0, "@markup.list", { fg = c.fg })
  
  -- Tags (HTML/XML)
  hl(0, "@tag", { fg = c.fg })
  hl(0, "@tag.attribute", { fg = c.fg })
  hl(0, "@tag.delimiter", { fg = c.fg })
  
  -- ==========================================================================
  -- LSP SEMANTIC TOKENS
  -- ==========================================================================
  
  hl(0, "@lsp.type.class", { fg = c.fg })
  hl(0, "@lsp.type.decorator", { fg = c.fg })
  hl(0, "@lsp.type.enum", { fg = c.fg })
  hl(0, "@lsp.type.enumMember", { fg = c.accent })
  hl(0, "@lsp.type.function", { fg = c.fg })
  hl(0, "@lsp.type.interface", { fg = c.fg })
  hl(0, "@lsp.type.macro", { fg = c.fg })
  hl(0, "@lsp.type.method", { fg = c.fg })
  hl(0, "@lsp.type.namespace", { fg = c.fg })
  hl(0, "@lsp.type.parameter", { fg = c.fg })
  hl(0, "@lsp.type.property", { fg = c.fg })
  hl(0, "@lsp.type.struct", { fg = c.fg })
  hl(0, "@lsp.type.type", { fg = c.fg })
  hl(0, "@lsp.type.typeParameter", { fg = c.fg })
  hl(0, "@lsp.type.variable", { fg = c.fg })
  
  -- ==========================================================================
  -- DIAGNOSTICS
  -- ==========================================================================
  
  hl(0, "DiagnosticError", { fg = c.red })
  hl(0, "DiagnosticWarn", { fg = c.warning })
  hl(0, "DiagnosticInfo", { fg = c.blue })
  hl(0, "DiagnosticHint", { fg = c.grey4 })
  hl(0, "DiagnosticOk", { fg = c.green })
  
  hl(0, "DiagnosticUnderlineError", { sp = c.red, undercurl = true })
  hl(0, "DiagnosticUnderlineWarn", { sp = c.warning, undercurl = true })
  hl(0, "DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
  hl(0, "DiagnosticUnderlineHint", { sp = c.grey4, undercurl = true })
  hl(0, "DiagnosticUnderlineOk", { sp = c.green, undercurl = true })
  
  hl(0, "DiagnosticVirtualTextError", { fg = c.red, italic = true })
  hl(0, "DiagnosticVirtualTextWarn", { fg = c.warning, italic = true })
  hl(0, "DiagnosticVirtualTextInfo", { fg = c.blue, italic = true })
  hl(0, "DiagnosticVirtualTextHint", { fg = c.grey4, italic = true })
  hl(0, "DiagnosticVirtualTextOk", { fg = c.green, italic = true })
  
  hl(0, "DiagnosticSignError", { fg = c.red })
  hl(0, "DiagnosticSignWarn", { fg = c.warning })
  hl(0, "DiagnosticSignInfo", { fg = c.blue })
  hl(0, "DiagnosticSignHint", { fg = c.grey4 })
  hl(0, "DiagnosticSignOk", { fg = c.green })
  
  -- ==========================================================================
  -- GIT SIGNS
  -- ==========================================================================
  
  hl(0, "GitSignsAdd", { fg = c.green })
  hl(0, "GitSignsChange", { fg = c.warning })
  hl(0, "GitSignsDelete", { fg = c.red })
  hl(0, "GitSignsAddNr", { fg = c.green })
  hl(0, "GitSignsChangeNr", { fg = c.warning })
  hl(0, "GitSignsDeleteNr", { fg = c.red })
  hl(0, "GitSignsAddLn", { bg = "#d9ebe2" })     -- #017f45 at 15% opacity
  hl(0, "GitSignsChangeLn", { bg = "#fce8d9" })  -- #e66100 at 15% opacity
  hl(0, "GitSignsDeleteLn", { bg = "#fcdcdd" })  -- #e01b24 at 15% opacity
  
  -- ==========================================================================
  -- TELESCOPE
  -- ==========================================================================
  
  hl(0, "TelescopeBorder", { fg = c.grey5 })
  hl(0, "TelescopePromptBorder", { fg = c.grey5 })
  hl(0, "TelescopeResultsBorder", { fg = c.grey5 })
  hl(0, "TelescopePreviewBorder", { fg = c.grey5 })
  hl(0, "TelescopeSelection", { bg = c.grey7 })
  hl(0, "TelescopeSelectionCaret", { fg = c.fg })
  hl(0, "TelescopeMatching", { fg = c.fg, bold = true })
  
  -- ==========================================================================
  -- NVIM-TREE / NEO-TREE
  -- ==========================================================================
  
  hl(0, "NvimTreeNormal", { fg = c.grey1, bg = c.grey8 })
  hl(0, "NvimTreeFolderIcon", { fg = c.grey1 })
  hl(0, "NvimTreeFolderName", { fg = c.grey1 })
  hl(0, "NvimTreeOpenedFolderName", { fg = c.fg })
  hl(0, "NvimTreeRootFolder", { fg = c.grey1, bold = true })
  hl(0, "NvimTreeGitDirty", { fg = c.warning })
  hl(0, "NvimTreeGitNew", { fg = c.green })
  hl(0, "NvimTreeGitDeleted", { fg = c.red })
  
  hl(0, "NeoTreeNormal", { fg = c.grey1, bg = c.grey8 })
  hl(0, "NeoTreeNormalNC", { fg = c.grey1, bg = c.grey8 })
  hl(0, "NeoTreeDirectoryIcon", { fg = c.grey1 })
  hl(0, "NeoTreeDirectoryName", { fg = c.grey1 })
  hl(0, "NeoTreeRootName", { fg = c.grey1, bold = true })
  hl(0, "NeoTreeGitModified", { fg = c.warning })
  hl(0, "NeoTreeGitAdded", { fg = c.green })
  hl(0, "NeoTreeGitDeleted", { fg = c.red })
  
  -- ==========================================================================
  -- INDENT-BLANKLINE
  -- ==========================================================================
  
  hl(0, "IblIndent", { fg = c.grey6 })
  hl(0, "IblScope", { fg = c.grey4 })
  hl(0, "IndentBlanklineChar", { fg = c.grey6 })
  hl(0, "IndentBlanklineContextChar", { fg = c.grey4 })
  
  -- ==========================================================================
  -- CMP (Completion)
  -- ==========================================================================
  
  hl(0, "CmpItemAbbr", { fg = c.fg })
  hl(0, "CmpItemAbbrMatch", { fg = c.fg, bold = true })
  hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.fg, bold = true })
  hl(0, "CmpItemAbbrDeprecated", { fg = c.grey4, strikethrough = true })
  hl(0, "CmpItemKind", { fg = c.grey4 })
  hl(0, "CmpItemMenu", { fg = c.grey4 })
  
  -- ==========================================================================
  -- WHICH-KEY
  -- ==========================================================================
  
  hl(0, "WhichKey", { fg = c.fg })
  hl(0, "WhichKeyGroup", { fg = c.grey1 })
  hl(0, "WhichKeyDesc", { fg = c.grey1 })
  hl(0, "WhichKeySeparator", { fg = c.grey5 })
  hl(0, "WhichKeyFloat", { bg = c.grey8 })
  
  -- ==========================================================================
  -- LAZY.NVIM
  -- ==========================================================================
  
  hl(0, "LazyButton", { fg = c.grey1, bg = c.grey7 })
  hl(0, "LazyButtonActive", { fg = c.bg, bg = c.grey1 })
  hl(0, "LazyH1", { fg = c.bg, bg = c.grey1, bold = true })
  
  -- ==========================================================================
  -- TERMINAL COLORS
  -- ==========================================================================
  
  vim.g.terminal_color_0 = c.fg        -- black
  vim.g.terminal_color_1 = c.red       -- red
  vim.g.terminal_color_2 = c.green     -- green
  vim.g.terminal_color_3 = c.yellow    -- yellow
  vim.g.terminal_color_4 = c.blue      -- blue
  vim.g.terminal_color_5 = c.magenta   -- magenta
  vim.g.terminal_color_6 = c.cyan      -- cyan
  vim.g.terminal_color_7 = c.grey4     -- white
  vim.g.terminal_color_8 = c.grey4     -- bright black
  vim.g.terminal_color_9 = c.red       -- bright red
  vim.g.terminal_color_10 = c.green    -- bright green
  vim.g.terminal_color_11 = c.yellow   -- bright yellow
  vim.g.terminal_color_12 = c.blue     -- bright blue
  vim.g.terminal_color_13 = c.magenta  -- bright magenta
  vim.g.terminal_color_14 = c.cyan     -- bright cyan
  vim.g.terminal_color_15 = c.bg       -- bright white
end

return M
