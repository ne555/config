vim.opt.termguicolors = false
vim.cmd('colorscheme desert')
vim.cmd('highlight Normal ctermbg=black ctermfg=white')
vim.cmd('highlight NonText ctermbg=black')

vim.cmd('highlight Search ctermbg=Blue')
vim.cmd('highlight RedrawDebugClear ctermfg=black')
vim.cmd('highlight NvimInternalError ctermfg=black')
vim.cmd('highlight QuickFixLine ctermbg=blue')
-- coc rompe
vim.cmd('highlight CocErrorSign ctermfg=white')
vim.cmd('highlight CocInfoFloat ctermbg=Black')
vim.cmd('highlight CocFloating ctermbg=238')
vim.cmd('highlight CocInfoSign ctermbg=Black')
vim.cmd('highlight CocMenuSel ctermbg=Grey')
vim.cmd('highlight CocWarningSign ctermfg=LightGrey')
vim.cmd('highlight FgCocErrorFloatBgCocFloating cterm=bold ctermfg=white')
vim.cmd('highlight Pmenu ctermbg=Brown')
vim.cmd('highlight PmenuSel ctermbg=black ctermfg=250')
vim.cmd('highlight PmenuThumb ctermbg=black ctermfg=250')
vim.cmd('highlight link FgCocHintFloatBgCocFloating DiagnosticHint')
-- quickfix
vim.cmd('highlight Search ctermfg=white')

vim.cmd('highlight Conceal cterm=underline ctermfg=white')
vim.cmd('highlight Visual ctermfg=DarkRed ctermbg=Green')
vim.cmd('highlight TabLineSel ctermbg=DarkGreen cterm=bold')
