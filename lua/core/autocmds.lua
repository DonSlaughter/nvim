local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- remove auto comment
autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "c", "r", "o" })
    end,
})

-- strip whitespace
autocmd("BufWritePre", {
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd("BufWritePre", {
    pattern = "*",
    command = [[%s/\n\+\%$//e]],
})

-- yaml indentation
autocmd("FileType", {
    pattern = "yaml",
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.expandtab = true
    end,
})

-- tex settings
autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.tex",
    callback = function()
        vim.opt_local.textwidth = 80
    end,
})

-- remember folds
local fold_group = augroup("remember_folds", { clear = true })

autocmd("BufWinLeave", {
    group = fold_group,
    pattern = "*.*",
    command = "mkview",
})

autocmd("BufWinEnter", {
    group = fold_group,
    pattern = "*.*",
    command = "silent! loadview",
})
