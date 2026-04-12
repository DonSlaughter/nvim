local opt = vim.opt

opt.encoding = "utf-8"
opt.cursorline = true
opt.wildmenu = true
opt.hidden = true
opt.updatetime = 300
opt.history = 500
opt.scrolloff = 10
opt.splitbelow = true
opt.splitright = true
opt.mouse = "a"
opt.clipboard = "unnamed"
opt.list = true
opt.backspace = { "indent", "start", "eol" }

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

vim.api.nvim_create_autocmd("FileType", {
    pattern = "make",
    callback = function()
        vim.opt_local.expandtab = false
    end,
})

opt.syntax = "on"

opt.shortmess:append({ I = true, c = true, A = true, W = true })

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

opt.listchars = {
    eol = "$",
    tab = "| ",
    trail = "~",
    extends = ">",
    precedes = "<",
    space = "·",
}

opt.showbreak = "↪"

opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.spelllang = "de"

opt.termguicolors = true

if vim.fn.has("virtualedit") == 1 then
    opt.virtualedit = "block"
end
