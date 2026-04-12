local wk = require("which-key")


wk.add({
	{ "<leader>e", desc = "Explorer (nvim-tree)" },
    { "<leader>f", group = "Find (fzf)" },
    { "<leader>g", group = "Git" },
    { "<leader>o", desc = "Oil file manager" },
}, { prefix = "<leader>" })

-- Anzeige triggern
vim.keymap.set("n", "<leader>?", function()
    wk.show("<leader>")
end, { desc = "Which-key" })
