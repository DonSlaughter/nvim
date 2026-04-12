vim.opt.termguicolors = true

require("tokyonight").setup({
    style = "night", -- storm / moon / night / day

    transparent = false,

    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
    },

    sidebars = { "qf", "help", "terminal", "packer" },
    floats = "dark",

    lualine_bold = true,
})

--vim.cmd("colorscheme tokyonight")

-- 🔥 bessere Float Fenster
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1f2335" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#7aa2f7" })

-- 🔥 Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#f7768e" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#e0af68" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#7aa2f7" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#9ece6a" })
