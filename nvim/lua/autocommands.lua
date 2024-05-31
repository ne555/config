-- don't add comment character in new line
vim.api.nvim_create_autocmd({'Filetype'}, {
  pattern = {'*'},
  callback = function()
    vim.opt.formatoptions = { c = false, o = false, r = false }
  end
})
