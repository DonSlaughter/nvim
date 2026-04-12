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
            {
                function()
                    local clients = vim.lsp.get_clients({ bufnr = 0 })
                    if not clients or #clients == 0 then
                        return "No LSP"
                    end

                    -- mehrere Clients möglich (z. B. clangd + null-ls später)
                    local names = {}
                    for _, client in ipairs(clients) do
                        table.insert(names, client.name)
                    end

                    return table.concat(names, ", ")
                end,
            },
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
