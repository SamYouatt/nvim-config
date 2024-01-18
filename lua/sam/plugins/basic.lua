-- All plugins which don't require any additional setup live in here
return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },

    'tpope/vim-vinegar',

    -- Color scheme
    { 'rose-pine/neovim', name = 'rose-pine', lazy = true },
}
