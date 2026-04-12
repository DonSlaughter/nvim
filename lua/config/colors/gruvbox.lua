vim.opt.termguicolors = true

require("gruvbox").setup({
    terminal_colors = true,
    contrast = "hard", -- soft / medium / hard

    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
    },

    transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")

-- 🔥 bessere LSP Darstellung
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#fabd2f" })

-- 🔥 Diagnostics Farben
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#fb4934" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#fabd2f" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#83a598" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#8ec07c" })
