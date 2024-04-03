return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

        -- completion plugins
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "tsserver",
                "cssls",
                "gopls",
            },
        })

        local lspconfig = require("lspconfig")

        -- Setup language servers
        lspconfig.lua_ls.setup({})
        lspconfig.rust_analyzer.setup({})
        lspconfig.cssls.setup({})
        lspconfig.eslint.setup({})
        lspconfig.gopls.setup({})
        lspconfig.csharp_ls.setup({})
        -- super useful reddit post https://www.reddit.com/r/neovim/comments/yukgxy/rust_yew_tailwindcss_intellisense/
        lspconfig.tailwindcss.setup({
            filetypes = {
                "css",
                "html",
                "javascript",
                "javascriptreact",
                "typescript",
                "typescriptreact",
                "rust",
            },
            init_options = {
                userLanguages = {
                    rust = "html",
                },
            },
            -- Only start the tailwindcss lang server if the tailwind config is in the root directory
            root_dir = lspconfig.util.root_pattern('tailwind.config.js', 'tailwind.config.cjs', 'tailwind.config.ts'),
        })

        -- Covererd by typescript-tools.nvim instead
        -- lspconfig.tsserver.setup({})

        -- Completion setup
        local cmp = require("cmp")

        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),

                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),

                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "luasnip" },
            }),
        })
    end,
}
