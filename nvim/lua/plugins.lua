local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'folke/which-key.nvim',
  'folke/neoconf.nvim',
  'folke/neodev.nvim',

  'preservim/nerdtree',
  'junegunn/fzf',
  'junegunn/fzf.vim',

  -- ide
  {'neoclide/coc.nvim', branch='release'},
  'vim-test/vim-test',
  'hkupty/iron.nvim',

  -- misc
  'tpope/vim-abolish', -- camelCase <-> under_case transformer
  'tpope/vim-surround', -- change surrounding tokens: [hola] -> 'hola'
  'tpope/vim-unimpaired', -- decoding url, switch options

  -- git
  'tpope/vim-fugitive',
  'tommcdo/vim-fugitive-blame-ext',
  'whiteinge/diffconflicts',

  -- 'petertriho/cmp-git',
  -- 'sar/cmp-lsp.nvim',
  -- 'hrsh7th/nvim-cmp',
  'freitass/todo.txt-vim',
  'hrsh7th/vim-vsnip',

  -- optionals...
  'ap/vim-css-color',

  {
      'nvim-lualine/lualine.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'}
  }

})
