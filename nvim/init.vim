let mapleader = ","
let maplocalleader = "\\"
filetype plugin on

set hidden

let g:editorconfig = v:false
set nowritebackup
set nobackup
set noswapfile

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set list

set showcmd
set number
set relativenumber

syntax on
set nohlsearch
set noincsearch

set colorcolumn+=80

"clipboard
set clipboard=unnamedplus

"don't add comment character in new line (this should be after filetype
"plugin)
autocmd Filetype * setlocal formatoptions-=c
autocmd Filetype * setlocal formatoptions-=o
autocmd Filetype * setlocal formatoptions-=r


"autocomplete commands
set wildmode=longest,list

set lazyredraw

"general mappings
noremap <C-q> :tabclose <Return>
noremap <C-w>n :tab split <Return>

"fuzzy search
noremap <C-p> :FZF <Return>

"terminal
:tnoremap <Esc> <C-\><C-n>
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'



"traverse errors
map [q :cnext <Return>
map ]q :cprev <Return>
"TODO: unify quickfix, syntastic, spell...

set foldlevelstart=99

set completeopt=menuone,menu,longest



"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "pasive", "active_filetypes": [], "passive_filetypes": ["cpp", "python", "tex"] }
let g:syntastic_quiet_messages = {'regex': 'missing `\\@', 'level': 'warning'}
nmap ]g :lnext<CR>
nmap [g :lprev<CR>


"php
if !exists('g:vdebug_options')
  let g:vdebug_options = {}
endif
let g:vdebug_options.port = 9005
let g:vdebug_options.path_maps = {'/var/www/html/': getcwd()}
let g:vdebug_options.on_close = "detach"
let g:vdebug_options.break_on_open = 1
let g:vdebug_options.simplified_status = 0

if !exists('g:vdebug_keymap')
  let g:vdebug_keymap = {}
endif
let g:vdebug_keymap.run_to_cursor  = "<Left>"
let g:vdebug_keymap.step_over  = "<Down>"
let g:vdebug_keymap.step_into  = "<Right>"
let g:vdebug_keymap.step_out  = "<Up>"

" alignment
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)


let g:python3_host_prog = "/usr/bin/python3"

" tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>C :TestClass<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" debug
let g:vimspector_enable_mappings = 'HUMAN'

runtime colors.vim
runtime plugins.lua
runtime autocommands.vim
runtime functions.vim
runtime coc.vim
