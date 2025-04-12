return {
    {
        "saghen/blink.cmp",
        dependencies = "rafamadriz/friendly-snippets",
        version = 'v1.*',
        opts = {
            completion = {
                documentation = {
                    auto_show = true,
                }
            },
            signature = { enabled = true },
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "nvim-tree/nvim-web-devicons",
            "saghen/blink.cmp",
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

            -- Completion setup
            local lspblink = require "blink.cmp"
            local capabilities = lspblink.get_lsp_capabilities({
                textDocument = { completion = { completionItem = { snippetSupport = false } } },
            })

            local lspconfig = require("lspconfig")

            vim.lsp.enable({ "rust-analyzer", "zls", "gopls" })

            -- Setup language servers
            lspconfig.lua_ls.setup({ capabilities })
            lspconfig.cssls.setup({ capabilities = { textDocument = { completion = { completionItem = { snippetSupport = true } } } } })
            lspconfig.eslint.setup({ capabilities })
            lspconfig.csharp_ls.setup({ capabilities })
            lspconfig.ocamllsp.setup({ capabilities })
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
                capabilities,
            })

            -- Diagnostic setup
            vim.diagnostic.config {
                virtual_text = true,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = "E",
                        [vim.diagnostic.severity.WARN] = "W",
                        [vim.diagnostic.severity.INFO] = "I",
                        [vim.diagnostic.severity.HINT] = "H",
                    }
                },
            }

            -- Remaps
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                    local opts = { buffer = ev.buf }

                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)

                    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

                    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                end,
            })
        end,
    },
}
