vim.o.termguicolors = true

vim.cmd.colorscheme("catppuccin")

--[[
vim.api.nvim_create_autocmd({"OptionSet"}, {
    pattern = {"background"},
    callback = function(_ev)
        if vim.o.background == 'dark' then
            -- Dark theme preference
            vim.cmd.colorscheme(dark_scheme)
        else
            -- light theme preference
            vim.cmd.colorscheme(light_scheme)
        end

        -- force full redraw
        vim.cmd("mode")
    end
})
]]--
