return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff' },
                lualine_c = { 'filename' },
                lualine_x = { 'diagnostics', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
        }
    end
}
