-- =========================
-- ON ATTACH (Keymaps)
-- =========================
local on_attach = function(_, bufnr) -- client bewusst ignoriert
    local map = vim.keymap.set
    local opts = { buffer = bufnr, silent = true }

    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "gi", vim.lsp.buf.implementation, opts)
    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    -- optional aber sehr sinnvoll:
    map("n", "gr", vim.lsp.buf.references, opts)
    map("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
    end, opts)
end

-- =========================
-- CLANGD (C++)
-- =========================
vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--completion-style=detailed",
        "--header-insertion=never",
    },
    root_markers = { "compile_commands.json", ".git" },
    on_attach = on_attach,
})

-- =========================
-- PYRIGHT (Python)
-- =========================
vim.lsp.config("pyright", {
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
})

-- =========================
-- LUA (Neovim config)
-- =========================
vim.lsp.config("lua_ls", {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
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

-- =========================
-- ENABLE LSPs
-- =========================
vim.lsp.enable("clangd")
vim.lsp.enable("pyright")
vim.lsp.enable("lua_ls")

-- =========================
-- DIAGNOSTICS UI
-- =========================
vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
    },
})
