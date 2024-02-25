local specs = {
  github_light = {
    syntax = {
      comment = '#767D85',
      string = '#3A5987',
    },
  },
}

require('github-theme').setup({
  specs = specs,
})

-- setup must be called before loading
vim.cmd('colorscheme github_light')


-- Returns the spec of the specified colorscheme
-- local spec = require('github-theme.spec').load('github_light')
-- print(vim.inspect(spec.syntax))
