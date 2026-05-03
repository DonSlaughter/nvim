return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("config.mason")
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("config.mason-lsp")
        end,
    },
}
