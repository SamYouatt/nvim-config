-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    -- THEMES
    use({ 'tomasiser/vim-code-dark' })

    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use({ 'shaunsingh/nord.nvim' })

    use({ 'navarasu/onedark.nvim' })

    use({ 'folke/tokyonight.nvim' })

    use({ 'rebelot/kanagawa.nvim' })
    -- END THEMES


    use {
        'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
    }

    use {
        "windwp/nvim-ts-autotag" }

    use {
        'theprimeagen/harpoon'
    }

    use {
        'mbbill/undotree'
    }

    use {
        'tpope/vim-fugitive'
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }

    }

    use({ 'projekt0n/github-nvim-theme' })

    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }

    use { "numToStr/Comment.nvim" }

    use { "tpope/vim-surround" }
end)
