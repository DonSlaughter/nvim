local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

ts.setup({
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "lua",
        "bash",
        "json",
    },
    highlight = { enable = true },
    indent = { enable = true },
})
