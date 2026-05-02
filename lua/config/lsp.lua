-- =========================================================
-- LSP CORE SETUP (Neovim 0.11+ / 0.12+ API)
-- =========================================================

-- Mason binaries in PATH einhängen (WICHTIG)
vim.env.PATH = vim.env.PATH
    .. ":"
    .. vim.fn.stdpath("data")
    .. "/mason/bin"

-- =========================================================
-- ON ATTACH (Keymaps pro Buffer)
-- =========================================================

local on_attach = function(_, bufnr)
    local map = vim.keymap.set
    local opts = { buffer = bufnr, silent = true }

    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "gi", vim.lsp.buf.implementation, opts)
    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    -- Diagnostics navigation (optional aber sinnvoll)
    map("n", "[d", vim.diagnostic.goto_prev, opts)
    map("n", "]d", vim.diagnostic.goto_next, opts)
end

-- =========================================================
-- clangd (C / C++)
-- =========================================================

vim.lsp.config("clangd", {
    on_attach = on_attach,

    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--completion-style=detailed",
        "--header-insertion=never",
    },

    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },

    root_markers = {
        "compile_commands.json",
        "CMakeLists.txt",
        ".git",
    },
})

vim.lsp.enable("clangd")

-- =========================================================
-- pyright (Python)
-- =========================================================

vim.lsp.config("pyright", {
    on_attach = on_attach,

    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
            },
        },
    },

    root_markers = {
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        ".git",
    },
})

vim.lsp.enable("pyright")

-- =========================================================
-- lua_ls (Neovim Lua Dev)
-- =========================================================

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
                checkThirdParty = false,
            },

            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.enable("lua_ls")

-- =========================================================
-- DIAGNOSTICS GLOBAL CONFIG
-- =========================================================

vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
    },
})
