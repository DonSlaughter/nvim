local map = vim.keymap.set

-- clear search
map("n", "<leader><space>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })
map("n", "<esc>", "<cmd>nohlsearch<cr><esc>", { silent = true })

-- window navigation
map("n", "<A-h>", "<C-w>h", { desc = "Left window" })
map("n", "<A-j>", "<C-w>j", { desc = "Down window" })
map("n", "<A-k>", "<C-w>k", { desc = "Up window" })
map("n", "<A-l>", "<C-w>l", { desc = "Right window" })

map({ "i", "t", "v" }, "<A-h>", "<C-\\><C-n><C-w>h")
map({ "i", "t", "v" }, "<A-j>", "<C-\\><C-n><C-w>j")
map({ "i", "t", "v" }, "<A-k>", "<C-\\><C-n><C-w>k")
map({ "i", "t", "v" }, "<A-l>", "<C-\\><C-n><C-w>l")

-- tabs
map("n", "<leader>to", "<cmd>tabnew<cr>")
map("n", "<leader>tc", "<cmd>tabclose<cr>")
map("n", "<leader>tn", "<cmd>tabnext<cr>")
map("n", "<leader>tp", "<cmd>tabprevious<cr>")
map("n", "<leader>tf", "<cmd>tabnew %<cr>")

-- toggle list
map("n", "<leader>l", "<cmd>set list!<cr>")

-- ; -> :
map("n", ";", ":")

-- toggle line numbers
map("n", "<C-N>", function()
    vim.wo.relativenumber = not vim.wo.relativenumber
    vim.wo.number = true
end)

-- resize windows
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Left>", "<C-w><")

-- navigation in insert
map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- better wrapped movement
map("n", "j", "gj")
map("n", "gj", "j")
map("n", "k", "gk")
map("n", "gk", "k")

-- command mode
map("c", "<C-a>", "<Home>")
map("c", "<C-e>", "<End>")

-- sudo write
map("c", "w!!", "execute 'silent! write !sudo tee % >/dev/null' | edit!")

-- substitute word
map("n", "<leader>c", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]])

-- very magic search
map("n", "/", "/\\v")

-- Tabs → Spaces
map("n", "<leader>it", "<cmd>set expandtab | retab<CR>", { desc = "Tabs to spaces" })

-- Spaces → Tabs
map("n", "<leader>iT", "<cmd>set noexpandtab | retab!<CR>", { desc = "Spaces to tabs" })

local function set_indent(size)
    vim.opt.tabstop = size
    vim.opt.shiftwidth = size
    vim.opt.softtabstop = size
end

map("n", "<leader>i2", function() set_indent(2) end, { desc = "Indent 2" })
map("n", "<leader>i4", function() set_indent(4) end, { desc = "Indent 4" })
map("n", "<leader>i6", function() set_indent(6) end, { desc = "Indent 6" })
map("n", "<leader>i8", function() set_indent(8) end, { desc = "Indent 8" })

-- Lazy UI
map("n", "<F1>", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Mason UI
map("n", "<F2>", "<cmd>Mason<CR>", { desc = "Mason" })

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics" })
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<CR>", { desc = "Workspace Diagnostics" })
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<CR>", { desc = "Document Diagnostics" })
map("n", "<leader>xl", "<cmd>Trouble loclist<CR>", { desc = "Location List" })
map("n", "<leader>xq", "<cmd>Trouble quickfix<CR>", { desc = "Quickfix List" })

map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Line diagnostics" })

map("n", "<leader>ac", "<cmd>CodeCompanionChat<CR>",
    { desc = "AI Chat" })

map("v", "<leader>ae", "<cmd>CodeCompanionChat<CR>",
    { desc = "Explain Selection" })

map("n", "<leader>aa", "<cmd>CodeCompanionActions<CR>",
    { desc = "AI Actions" })

map("n", "<leader>ai", "<cmd>CodeCompanion<CR>",
    { desc = "Inline AI" })
