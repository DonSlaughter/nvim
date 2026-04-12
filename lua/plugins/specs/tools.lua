return {
    {
        "tpope/vim-fugitive",
        config = function()
            require("config.fugitive")
        end,
    },
    {
        "ibhagwan/fzf-lua",
        config = function()
            require("config.fzf")
        end,
    },
    {
        "folke/which-key.nvim",
        config = function()
            require("config.whichkey")
        end,
    },
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.oil")
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.nvimtree")
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = false,
    },
}
