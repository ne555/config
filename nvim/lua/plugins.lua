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

  -- file explorer
  -- 'preservim/nerdtree',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'stevearc/oil.nvim',

  'lambdalisue/vim-suda',

  -- ide
  {'neoclide/coc.nvim', branch='release'},
  'vim-test/vim-test',
  'hkupty/iron.nvim',
  'tpope/vim-commentary', -- comment code
  {'MattesGroeger/vim-bookmarks', config = function()
    vim.g.bookmark_save_per_working_dir = true
    vim.g.bookmark_no_default_key_mappings = true
    vim.g.bookmark_location_list = true
  end}, -- bookmarks
  {
    'folke/todo-comments.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- misc
  'tpope/vim-abolish', -- camelCase <-> under_case transformer
  -- 'tpope/vim-surround', -- change surrounding tokens: [hola] -> 'hola'
  'tpope/vim-unimpaired', -- decoding url, switch options

  -- git
  'tpope/vim-fugitive',
  'tommcdo/vim-fugitive-blame-ext',
  'whiteinge/diffconflicts',
  'junkblocker/git-time-lapse',

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
  },
  'andreshazard/vim-logreview',
  'trapd00r/irc.vim',
  'milisims/nvim-luaref',
  'nvim-lua/plenary.nvim',

})
