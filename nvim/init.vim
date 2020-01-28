set nowritebackup
set nobackup
set noswapfile

set autoindent
set tabstop=4
set shiftwidth=4

set showcmd
set number

syntax on
set nohlsearch
set noincsearch

colorscheme desert
filetype plugin on

"autocomplete commands
set wildmode=longest,list

set lazyredraw

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
