return {
    {
        "lervag/vimtex",
        ft = { "tex" }, -- lazy load nur für LaTeX
        config = function()
            require("config.vimtex")
        end,
    },
}
