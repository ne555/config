local cpp = vim.api.nvim_create_augroup('cpp', { clear = true })
local doc = vim.api.nvim_create_augroup('doc', { clear = true })
local make = vim.api.nvim_create_augroup('make', { clear = true })
local subtitles = vim.api.nvim_create_augroup('subtitles', { clear = true })
local template = vim.api.nvim_create_augroup('template', { clear = true })
local tex = vim.api.nvim_create_augroup('tex', { clear = true })
local yaml = vim.api.nvim_create_augroup('yaml', { clear = true })
local large = vim.api.nvim_create_augroup('large', { clear = true })

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
    group = yaml,
    pattern = { 'yaml' },
    callback = function()
        vim.opt.indentexpr = ''
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
    end
})

vim.api.nvim_create_autocmd({ 'BufReadPre' }, {
    desc = 'Deshabilita opciones para mejorar la carga de archivos enormes',
    group = large,
    pattern = { '*' },
    callback = function(args)
        local max_size = vim.g.LargeFile * 1024 * 1024
        if vim.fn.getfsize(args.file) > max_size then
            vim.opt.eventignore:append('FileType')
            vim.opt.swapfile = false
            vim.opt.bufhidden = 'unload'
            vim.opt.buftype = 'nowrite'
            vim.opt.undolevels = -1
        else
            vim.opt.eventignore:remove('FileType')
        end
    end
})
