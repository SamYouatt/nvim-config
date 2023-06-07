require('rose-pine').setup({
    disable_background = true
})

require('nord')

require('onedark').setup({
    transparent = true
})

vim.o.termguicolors = true

vim.g.codedark_modern = true
vim.g.codedark_transparent = true

vim.g.nord_contrast = true
vim.g.nord_bold = false
vim.g.nord_borders = true

function ColorMyPencils(color)
    color = color or "nord"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
