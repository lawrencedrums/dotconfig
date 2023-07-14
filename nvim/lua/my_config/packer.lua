-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use({
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		    require('rose-pine').setup({
	            variant = 'dawn',
                -- groups = { background = '#fefdfd' }
		    })
        -- vim.cmd('colorscheme rose-pine-dawn')
	    end
    })
    use({'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            require('catppuccin').setup({
                flavor = "latte",
                background = {
                    light = "latte",
                    dark = "latte",
                },
                color_overrides = {
                    latte = {
                        base = "#fefdfd",
                        mantle = "#f0f1f5"
                    }
                }
            })
            vim.cmd('colorscheme catppuccin')
        end
    })
    use('chentoast/marks.nvim')
    use('lewis6991/gitsigns.nvim')
    use('lukas-reineke/indent-blankline.nvim')
    use('mbbill/undotree')
    use('nvim-lualine/lualine.nvim')
    use('nvim-tree/nvim-web-devicons')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('romgrk/barbar.nvim')
    use('tpope/vim-fugitive')
    -- use('vim-airline/vim-airline')
    -- use('vim-airline/vim-airline-themes')
    use('yamatsum/nvim-nonicons')
    use {
        'folke/trouble.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
        require('trouble').setup {
            mode = 'document_diagnostics'
        }
        end
    }
    use {
        'folke/which-key.nvim',
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your config
            }
        end
    }
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    -- or                          , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},         -- Required
		    {'hrsh7th/cmp-nvim-lsp'},     -- Required
		    {'hrsh7th/cmp-buffer'},       -- Optional
		    {'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},             -- Required
		    {'rafamadriz/friendly-snippets'}, -- Optional
	    }
    }

end)

