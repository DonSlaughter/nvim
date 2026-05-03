require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "pyright",
        "lua_ls",
    },
    automatic_installation = true,
})
