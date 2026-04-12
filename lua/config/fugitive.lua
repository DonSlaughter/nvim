local map = vim.keymap.set

-- Git status
map("n", "<leader>gs", ":Git<CR>", { desc = "Git status" })

-- Git blame
map("n", "<leader>gb", ":Git blame<CR>", { desc = "Git blame" })

-- Git diff
map("n", "<leader>gd", ":Gdiffsplit<CR>", { desc = "Git diff split" })

-- Git commit
map("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })

-- Git push
map("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
