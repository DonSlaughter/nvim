local lualine = require("lualine")

lualine.setup({
    options = {
        theme = "auto",
        globalstatus = true,
        section_separators = "",
        component_separators = "",
    },

    sections = {
        -- LEFT
        lualine_a = { "mode" },
        lualine_b = { "branch" },

        lualine_c = {
            {
                "filename",
                path = 1, -- relative path
            },
        },

        -- RIGHT
        lualine_x = {
            {
                "diagnostics",
                sources = { "nvim_diagnostic" },
                symbols = {
                    error = "E:",
                    warn = "W:",
                    info = "I:",
                    hint = "H:",
                },
            },
            "encoding",
            "filetype",
        },

        lualine_y = { "progress" },
        lualine_z = { "location" },
    },

    extensions = {
        "fzf",
        "nvim-tree",
        "quickfix",
    },
})
