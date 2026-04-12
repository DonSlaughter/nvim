local fzf = require("fzf-lua")

fzf.setup({
    winopts = {
        height = 0.6,
        width = 0.9,
    },
})

local map = vim.keymap.set

-- Files
map("n", "<leader>ff", fzf.files, { desc = "Find files" })

-- Live grep
map("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })


-- Buffers
map("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })

-- Help
map("n", "<leader>fh", fzf.help_tags, { desc = "Help tags" })

map("n", "<leader>fJ", fzf.lines, {desc = "Search lines in all buffers",})

map("n", "<leader>fj", fzf.blines, {desc = "Search buffer lines"})

map("n", "<leader>fr", fzf.registers, {desc = "Search registers"})

map("n", "<leader>fg", fzf.live_grep, { desc = "Grep project" })

map("n", "<leader>fw", fzf.grep_cword, { desc = "Word under cursor" })

map("n", "<leader>fW", fzf.grep_cWORD, { desc = "WORD under cursor" })
