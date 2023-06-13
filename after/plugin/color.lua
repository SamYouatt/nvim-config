require('rose-pine').setup({
    disable_background = true
})

require('nord')

require('onedark').setup({
    transparent = true
})

require('tokyonight').setup({
    style = "moon",
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "normal", -- style for sidebars, see below
        floats = "normal",   -- style for floating windows
    },
    lualine_bold = true,
})

require('kanagawa').setup({
    functionStyle = { italic = true },
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none",
                }
            }
        }
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }
    end,
})

vim.o.termguicolors = true

vim.g.codedark_modern = true
vim.g.codedark_transparent = true

vim.g.nord_contrast = true
vim.g.nord_bold = false
vim.g.nord_borders = true

function ColorMyPencils(color)
    color = color or "kanagawa"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
