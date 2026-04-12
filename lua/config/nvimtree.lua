require("nvim-tree").setup({
    view = {
        width = 50,
    },
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                git = true,
            },
        },
    },
})

local map = vim.keymap.set


map("n", "<F6>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
map("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find file in tree" })
