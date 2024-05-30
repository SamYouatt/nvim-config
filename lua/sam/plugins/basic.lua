-- All plugins which don't require any additional setup live in here
return {
    "tpope/vim-vinegar",
    "tpope/vim-sleuth",
    "tpope/vim-surround",

    -- Show hex colours
    { "brenoprata10/nvim-highlight-colors", opts = {} },
    -- Nicer code action and similar
    { "stevearc/dressing.nvim", opts = {} },

    { dir = "/Users/samyouatt/Developer/proper-dave", name="proper-dave", opts = {}, config = true },
}
