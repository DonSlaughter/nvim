-- config file --

vim.scriptencoding = "utf-8"


vim.opt.belloff = 'all' -- never ring the bell for any reason

-- Shortmessages --
vim.opt.shortmess = vim.opt.shortmess + 'A' -- ignore annoying swapfile messages
vim.opt.shortmess = vim.opt.shortmess + 'I' -- no splash screen
vim.opt.shortmess = vim.opt.shortmess + 'O' -- file-read message overwrites previous
vim.opt.shortmess = vim.opt.shortmess + 'T' -- truncate non-file messages in middle
vim.opt.shortmess = vim.opt.shortmess + 'W' -- don't echo "[w]"/"[written]" when writing
vim.opt.shortmess = vim.opt.shortmess + 'a' -- use abbreviations in messages eg. `[RO]` instead of `[readonly]`
vim.opt.shortmess = vim.opt.shortmess + 'c' -- completion messages
vim.opt.shortmess = vim.opt.shortmess + 'o' -- overwrite file-written messages
vim.opt.shortmess = vim.opt.shortmess + 't' -- truncate file messages at start

-- Searching --
vim.opt.incsearch = true 
vim.opt.hlsearch = true
vim.opt.ignorecase = true -- ignore case in searches
vim.opt.smartcase = true -- don't ignore case in searches if uppercase characters present

-- Line modifications --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.wrap = false
vim.opt.cursorline= true
vim.opt.list = true -- show whitespace

vim.opt.autoindent = true -- maintain indent of current line
vim.opt.backspace = 'indent,start,eol' -- allow unrestricted backspacing in insert mode

vim.opt.emoji = false -- don't assume all emoji are double width
vim.opt.expandtab = true -- always use spaces instead of tabs
vim.opt.fillchars = {
  diff = '∙', -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
  eob = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
  fold = '·', -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
  vert = '┃', -- BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
}


