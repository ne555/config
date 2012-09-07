set nowritebackup
set noswapfile
"set verbose=9
"tab
set autoindent
set tabstop=4
"set expandtab
set shiftwidth=4

set nu "line numbers
syntax on "highlighting
if &diff
	syntax off
endif
"set hlsearch "resalt found text
"set mouse=a
set t_Co=256

colorscheme desert

"set background=dark

set printoptions=paper:a4

"compilar
map <S-F9> :w <Bar> !clear && g++ -Wall --pedantic-error % <Return>
"compilar y ejecutar
map <F9> :w <Bar> !clear && g++ -Wall --pedantic-error % && ./a.out <Return>

"usar templates segun extension del archivo
autocmd! BufNewFile * silent! 0r ~/.vim/skeletons/template.%:e

autocmd! BufNewFile,BufRead *.tex set filetype=tex

"autocomplete commands
set wildmode=longest,list

autocmd BufReadPre *.doc set ro
autocmd BufReadPre *.doc set hlsearch!
autocmd BufReadPost *.doc %!antiword "%"

"for autocompletion of code
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/wt
"set tags+=~/.vim/tags/sfml
"set tags+=~/.vim/tags/sfml-1.6
"set tags+=~/.vim/tags/sdl


" build tags of your own project with Ctrl-F12
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
map <F2> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q % <Return>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview
set completeopt=menuone,menu,longest

"to set omnicpp
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"let $PAGER=''
"nmap K :Man <C-R>=expand(\\"<cword>\\")<CR><CR> -\""

runtime ftplugin/man.vim


function! s:insert_gates()
	let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef " . gatename
	execute "normal! o#define " . gatename . " "
	execute "normal! Go#endif /* " . gatename . " */"
	normal! kk
	endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()


set path+=../header
"open the #include file in a new vertical window
map f :vertical botright sfind <cfile><CR>

"open doc files
autocmd BufReadPre *.doc set ro
autocmd BufReadPre *.doc set hlsearch!
autocmd BufReadPost *.doc %!antiword "%"
