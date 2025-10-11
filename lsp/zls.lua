---@type vim.lsp.Config
return {
    cmd = { 'zls' },
    filetypes = { 'zig', 'zir', 'zon' },
    root_markers = { 'zls.json', 'build.zig', '.git' },
    workspace_required = false,
    settings = {
        zls = {
            enable_build_on_save = true,
        },
    },
}
