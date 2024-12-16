return {
    {
        "saghen/blink.cmp",
        dependencies = "rafamadriz/friendly-snippets",
        version = 'v0.*',
        opts = {
            completion = {
                documentation = {
                    auto_show = true,
                }
            }
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            "saghen/blink.cmp",

            "nvim-tree/nvim-web-devicons",

            {
                "folke/lazydev.nvim",
                ft = "lua",
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "cssls",
                    "gopls",
                    "csharp_ls",
                },
            })

            local lspconfig = require("lspconfig")

            -- Setup language servers
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.cssls.setup({ capabilities = { textDocument = { completion = { completionItem = { snippetSupport = true } } } } })
            lspconfig.eslint.setup({})
            lspconfig.gopls.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.zls.setup({})
            lspconfig.ocamllsp.setup({})
            -- super useful reddit post https://www.reddit.com/r/neovim/comments/yukgxy/rust_yew_tailwindcss_intellisense/
            lspconfig.tailwindcss.setup({
                filetypes = {
                    "css",
                    "html",
                    "htmldjango",
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

            -- Completion setup
            require("blink.cmp").setup({})

            -- Diagnostic setup
            vim.diagnostic.config {
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN] = " ",
                        [vim.diagnostic.severity.INFO] = " ",
                        [vim.diagnostic.severity.HINT] = " ",
                    }
                }
            }
        end,
    },
}
