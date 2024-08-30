vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- like paste but won't replace buffer with what was deleted
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")

-- Quick fix navigation
vim.keymap.set("n", "<C-Down>", ":cn<CR>")
vim.keymap.set("n", "<C-Up>", ":cp<CR>")
vim.keymap.set("n", "<C-n>", ":cn<CR>")
vim.keymap.set("n", "<C-p>", ":cp<CR>")

vim.keymap.set("n", "<leader>cx", ":cclose<CR>")

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float) -- when on an error pressing this floats the diagnostic messages
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist) -- opens the quickfix list with all the diagnostics in the buffer

-- Undotree
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)

-- Lsp remaps that must be loaded after lsp attaches
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = { buffer = ev.buf }

        -- Jump to
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

        -- Signature info
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)

        -- Workspace commands
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)

        -- Code actions
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

        -- Refactoring
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)

        -- Formatting
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
