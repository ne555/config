local cpp = vim.api.nvim_create_augroup('cpp', { clear = true })
local doc = vim.api.nvim_create_augroup('doc', { clear = true })
local make = vim.api.nvim_create_augroup('make', { clear = true })
local subtitles = vim.api.nvim_create_augroup('subtitles', { clear = true })
local template = vim.api.nvim_create_augroup('template', { clear = true })
local tex = vim.api.nvim_create_augroup('tex', { clear = true })
local yaml = vim.api.nvim_create_augroup('yaml', { clear = true })

vim.api.nvim_create_autocmd({ 'Filetype' }, {
    desc = "don't add comment character in new line",
    pattern = { '*' },
    callback = function()
        vim.opt.formatoptions = { c = false, o = false, r = false }
    end
})

vim.api.nvim_create_autocmd({ 'BufNewFile' }, {
    desc = 'create new files from templates based on extension',
    group = template,
    pattern = { '*' },
    callback = function()
        vim.cmd('silent! 0read ~/.local/share/nvim/skeletons/template.%:e')
        vim.cmd('$ d _') -- remove blank line at the end
    end,
})

vim.api.nvim_create_autocmd({ 'BufNewFile' }, {
    desc = 'tex files are latex flavour',
    group = tex,
    pattern = { '*.tex' },
    callback = function()
        vim.opt.filetype = 'tex'
    end
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    desc = 'makefile options',
    group = make,
    pattern = { 'make' },
    callback = function()
        vim.g.editorconfig = false
        vim.opt.expandtab = false
        vim.opt.list = true
    end
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    desc = '',
    group = tex,
    pattern = { 'yaml' },
    callback = function()
        vim.opt.indentexpr = ''
    end
})
