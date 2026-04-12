require("oil").setup({
    default_file_explorer = true,
})

local map = vim.keymap.set

map("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Open Oil" })
