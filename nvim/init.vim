let mapleader = ","
let maplocalleader = "\\"
filetype plugin on

set hidden

set nowritebackup
set nobackup
set noswapfile

set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

set showcmd
set number
set relativenumber

syntax on
set nohlsearch
set noincsearch

"don't add comment character in new line (this should be after filetype
"plugin)
autocmd Filetype * setlocal formatoptions-=c
autocmd Filetype * setlocal formatoptions-=o
autocmd Filetype * setlocal formatoptions-=r

colorscheme desert

"autocomplete commands
set wildmode=longest,list

set lazyredraw

"general mappings
noremap <C-q> :tabclose <Return>

"usar templates segun extension del archivo
autocmd! BufNewFile * silent! 0r ~/.local/share/nvim/skeletons/template.%:e
autocmd! BufNewFile,BufRead *.tex set filetype=tex

"open doc files
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword -f -i 1 -w 0 "%"

"TODO: open pdf files


map <F9> :write <Return> :make <Return>
"moverse por los errores
map [q :cnext <Return>
map ]q :cprev <Return>
"TODO: unificar quickfix, syntastic, spell...

"identado (clang-format)
augroup file_cpp
	autocmd!
	autocmd FileType cpp setlocal formatprg=clang-format\ -style=file\ 2>/dev/null
	autocmd Filetype cpp setlocal foldmethod=syntax
	"compilar
	autocmd Filetype cpp setlocal makeprg=clear\ &&\ clang++\ -W{all,extra,pedantic}\ -fno-caret-diagnostics\ -fsanitize=undefined\ -ggdb\ -std=c++17\ %
augroup END


set completeopt=menuone,menu,longest

"subtitles
"{{{
augroup subtitles
	autocmd!
	autocmd BufRead *.srt :setlocal nobomb fileencoding=utf8 fileformat=unix
	autocmd BufRead *.srt :nnoremap <buffer><Space> :SubPlay<cr>
	autocmd BufRead *.ass :nnoremap <buffer><Space> :SubPlay<cr>
augroup END
"}}}


"TODO: latex
"open pdfs with pdftotext
function! Synctex()
        " remove 'silent' for debugging
        execute "!zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
endfunction
map <leader><Return> :call Synctex()<cr><cr>


"plugins
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "pasive", "active_filetypes": [], "passive_filetypes": ["cpp", "python", "tex"] }
let g:syntastic_quiet_messages = {'regex': 'missing `\\@', 'level': 'warning'}
nmap ]l :lnext<CR>
nmap [l :lprev<CR>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
	augroup END
endi


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
