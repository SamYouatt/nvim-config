return {
    cmd = { 'rust-analyzer' },
    root_markers = { 'Cargo.toml' },
    filetypes = { 'rust' },
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = true,
        }
    },
}
