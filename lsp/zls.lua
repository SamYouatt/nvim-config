return {
    cmd = { 'zls' },
    root_markers = { 'build.zig' },
    filetypes = { 'zig', 'zon' },
    settings = {
        zls = {
            enable_build_on_save = true,
        },
    },
}
