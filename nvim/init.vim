set nowritebackup
set nobackup
set noswapfile

"avoid tabs, use buffers
set hidden

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


"compilar
set makeprg=clear\ &&\ clang++\ -W{all,extra,pedantic}\ -fsanitize=undefined\ -ggdb\ -std=c++17\ %
map <F9> :write <Return> :make <Return>
"moverse por los errores
map [q :cnext <Return>
map ]q :cprev <Return>
"TODO: unificar quickfix, syntastic, spell...

"identado (clang-format)
augroup file_cpp
	autocmd!
	autocmd FileType cpp setlocal formatprg=clang-format\ -style=file\ 2>/dev/null
	autocmd FileType cpp setlocal foldmethod=syntax
	autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax
	autocmd InsertEnter,WinLeave * setlocal foldmethod=manual
augroup END


set completeopt=menuone,menu,longest

"subtitles
"{{{
augroup subtitles
	autocmd!
	autocmd BufRead *.srt :setlocal nobomb fileencoding=utf8 fileformat=unix
	autocmd BufRead *.srt :map <Space> :call PlaySubtitle()<cr><cr>
augroup END
"}}}
"TODO: reproducir audio en el tiempo de la línea
function! PlaySubtitle()
	let times = split(getline('.'))
	let videofile = substitute(bufname(), '-.*\.srt', '.mkv', '')
	if len(times)==3
		let start = substitute(times[0], ',', '.', '')
		let end = substitute(times[2], ',', '.', '')
		execute "!mpv --vo=null --start=" . start . " --end=" . end . ' video/' . videofile . ' &>/dev/null &'
	else
		echo 'timestamp not found'
	endif
endfunction


"TODO: latex
"open pdfs with pdftotext
"synctex with zathura
" jump to line in pdf
function! Synctex()
        " remove 'silent' for debugging
        execute "!zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
endfunction
map <leader><Return> :call Synctex()<cr><cr>


"plugins
call plug#begin('~/.local/share/nvim/site/plugin')
	Plug 'tpope/vim-fugitive'
	"Plug 'scrooloose/nerdtree'
	"Plug 'vim-syntastic/syntastic'
call plug#end()
