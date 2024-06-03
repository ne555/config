vim.cmd('filetype plugin on')
vim.cmd('syntax on')

vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

vim.opt.hidden = true

vim.opt.writebackup = false
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.list = true
vim.opt.listchars = { space = ' ', tab = '>.', lead = ' ', trail = '_'}
vim.opt.statusline = '%-f%-m%=%p%%,%c'
vim.opt.foldmethod='indent'
vim.opt.foldlevelstart=99

vim.opt.showcmd = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.colorcolumn:append('80')
vim.g.editorconfig = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.lazyredraw = true
vim.opt.wildmode = 'longest:list'
vim.opt.completeopt = 'menuone,menu,longest'

vim.opt.more = false


vim.g.python3_host_prog = '/usr/bin/python3'
