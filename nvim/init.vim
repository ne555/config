let mapleader = ","
let maplocalleader = "\\"
filetype plugin on

set hidden

set nowritebackup
set nobackup
set noswapfile

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

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

colorscheme desert
highlight Search ctermbg=Blue
highlight RedrawDebugClear ctermfg=black
highlight NvimInternalError ctermfg=black
highlight QuickFixLine ctermbg=blue
"coc rompe
highlight CocErrorSign ctermfg=white
highlight CocInfoFloat ctermbg=Black
highlight CocInfoSign ctermbg=Black
highlight CocMenuSel ctermbg=Grey
highlight CocWarningSign ctermfg=LightGrey
highlight FgCocErrorFloatBgCocFloating cterm=bold ctermfg=white
highlight Pmenu ctermbg=Brown
highlight PmenuSel ctermbg=black ctermfg=250
highlight PmenuThumb ctermbg=black ctermfg=250
highlight link FgCocHintFloatBgCocFloating DiagnosticHint
"quickfix
highlight Search ctermfg=white

highlight Normal ctermbg=black ctermfg=white
highlight NonText ctermbg=black
highlight Conceal cterm=underline ctermfg=white
highlight Visual ctermfg=DarkRed ctermbg=Green
highlight TabLineSel ctermbg=DarkGreen cterm=bold

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

"usar templates segun extension del archivo
autocmd! BufNewFile * silent! 0r ~/.local/share/nvim/skeletons/template.%:e
autocmd! BufNewFile,BufRead *.tex set filetype=tex

"open doc files
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword -f -i 1 -w 0 "%"

"TODO: open pdf files

"moverse por los errores
map [q :cnext <Return>
map ]q :cprev <Return>
"TODO: unificar quickfix, syntastic, spell...

"identado (clang-format)
augroup file_cpp
	autocmd!
	autocmd FileType cpp,c setlocal formatprg=clang-format\ -style=file\ 2>/dev/null
	autocmd Filetype cpp,c setlocal foldmethod=syntax
	"compilar
	autocmd Filetype cpp setlocal makeprg=clear\ &&\ clang++\ -W{all,extra,pedantic}\ -fno-caret-diagnostics\ -fsanitize=undefined\ -ggdb\ -std=c++17\ %
	autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax
	autocmd InsertEnter,WinLeave * setlocal foldmethod=manual
augroup END

set foldlevelstart=99

set completeopt=menuone,menu,longest

"subtitles
"{{{
augroup subtitles
	autocmd!
	autocmd BufRead *.srt :setlocal nobomb fileencoding=utf8 fileformat=unix
	autocmd BufRead *.srt :setlocal nocindent
	autocmd BufRead *.srt :nnoremap <buffer><Space> :SubPlay<cr>
	autocmd BufRead *.srt :nnoremap <buffer><leader><Space> :SubPlay video keep-going<cr>
	autocmd BufRead *.ass :nnoremap <buffer><Space> :SubPlay<cr>
	autocmd BufRead *.ass :nnoremap <buffer><leader><Space> :SubPlay video keep-going<cr>
augroup END
"}}}


"TODO: latex
"open pdfs with pdftotext
function! Synctex()
  " remove 'silent' for debugging
  execute "!zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
endfunction
map <leader><Return> :call Synctex()<cr><cr>


"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "pasive", "active_filetypes": [], "passive_filetypes": ["cpp", "python", "tex"] }
let g:syntastic_quiet_messages = {'regex': 'missing `\\@', 'level': 'warning'}
nmap ]g :lnext<CR>
nmap [g :lprev<CR>

" coc
" Don't pass messages to |ins-completion-menu|
set shortmess+=c
" avoid text shifting when diagnostics appear/become resolved.
set signcolumn=yes
" Use space for trigger completion with characters ahead and navigate
inoremap <silent><expr> <C-space> coc#refresh()
" autoimport
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>"
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <leader>K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" disable coc on diff
augroup disableCocInDiff
  autocmd!
  autocmd DiffUpdated * let b:coc_enabled=0
augroup END

" Cerrar buffers inactivos
function! Wipeout()
  " list of *all* buffer numbers
  let l:buffers = range(1, bufnr('$'))

  " what tab page are we in?
  let l:currentTab = tabpagenr()
  try
    " go through all tab pages
    let l:tab = 0
    while l:tab < tabpagenr('$')
      let l:tab += 1

      " go through all windows
      let l:win = 0
      while l:win < winnr('$')
        let l:win += 1
        " whatever buffer is in this window in this tab, remove it from
        " l:buffers list
        let l:thisbuf = winbufnr(l:win)
        call remove(l:buffers, index(l:buffers, l:thisbuf))
      endwhile
    endwhile

    " if there are any buffers left, delete them
    if len(l:buffers)
      execute 'bwipeout' join(l:buffers)
    endif
  finally
    " go back to our original tab page
    execute 'tabnext' l:currentTab
  endtry
endfunction

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

" alineacion
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
