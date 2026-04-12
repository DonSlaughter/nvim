local on_attach = function(client, bufnr)
    local map = vim.keymap.set
    local opts = { buffer = bufnr }

    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "gi", vim.lsp.buf.implementation, opts)
    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

-- 🔥 nur BASIS hier!
vim.lsp.config("clangd", {
    on_attach = on_attach,
})

vim.lsp.config("pyright", {
    on_attach = on_attach,
})

vim.lsp.enable("clangd")
vim.lsp.enable("pyright")

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" }, -- wichtig!
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
    },
})
