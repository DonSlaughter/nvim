-- Compiler
vim.g.vimtex_compiler_method = "latexmk"

-- Viewer (Linux typisch: zathura)
vim.g.vimtex_view_method = "zathura"

-- Quickfix automatisch öffnen bei Fehlern
vim.g.vimtex_quickfix_mode = 0

-- conceal deaktivieren (besser lesbar am Anfang)
vim.g.vimtex_syntax_conceal = {
    accents = 0,
    ligatures = 0,
    cites = 0,
    fancy = 0,
    spacing = 0,
    greek = 0,
    math_bounds = 0,
    math_delimiters = 0,
    math_fracs = 0,
    math_super_sub = 0,
    math_symbols = 0,
    sections = 0,
    styles = 0,
}

-- empfohlen
vim.g.tex_flavor = "latex"

vim.g.vimtex_compiler_latexmk = {
  continuous = 1,
  callback = 1,
  executable = "latexmk",
  options = {
    "-pdf",
    "-synctex=1",
    "-interaction=nonstopmode",
    "-file-line-error",
  },
}
