return {
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("config.lualine")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("config.colors.gruvbox")
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("config.colors.tokyonight")
        end,
    }
}
