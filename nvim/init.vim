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

"autocomplete commands
set wildmode=longest,list

set lazyredraw
"compilar

"usar templates segun extension del archivo
autocmd! BufNewFile * silent! 0r ~/.local/share/nvim/skeletons/template.%:e
autocmd! BufNewFile,BufRead *.tex set filetype=tex

"open doc files
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword -f -i 1 -w 0 "%"

"TODO: open pdf files


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
augroup END


set completeopt=menuone,menu,longest

"subtitles
"{{{
augroup subtitles
	autocmd!
	autocmd BufRead *.srt :setlocal nobomb fileencoding=utf8 fileformat=unix
augroup END
"}}}
"TODO: reproducir audio en el tiempo de la línea


"TODO: latex
"open pdfs with pdftotext
"synctex with zathura
