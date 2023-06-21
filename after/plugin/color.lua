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
    overrides = function(colors)
        local theme = colors.theme
        return {
            -- Telescope ui, made the background transparent but use the nice warm white for borders
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = "none" },
            TelescopePromptBorder = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopeResultsNormal = { fg = theme.ui.fg, bg = "none" },
            TelescopeResultsBorder = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopePreviewNormal = { bg = "none" },
            TelescopePreviewBorder = { bg = "none", fg = theme.ui.fg_dim },

            -- Dark colours for popup completion
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },

            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }
    end,
})

require('catppuccin')

vim.o.termguicolors = true

vim.g.codedark_modern = true
vim.g.codedark_transparent = true

vim.g.nord_contrast = true
vim.g.nord_bold = false
vim.g.nord_borders = true

function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
