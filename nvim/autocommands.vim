"templates on file extension
autocmd! BufNewFile * silent! 0r ~/.local/share/nvim/skeletons/template.%:e
autocmd! BufNewFile,BufRead *.tex set filetype=tex

"open doc files
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword -f -i 1 -w 0 "%"

"TODO: open pdf files


autocmd FileType make let b:EditorConfig_disable = 1
augroup file_makefile
    autocmd!
    autocmd FileType make let g:editorconfig = v:false
    "autocmd FileType make let b:EditorConfig_disable = 1
    autocmd FileType make setlocal noexpandtab
    autocmd FileType make set list
augroup END

augroup file_cpp
	autocmd!
    "indent (clang-format)
	autocmd FileType cpp,c setlocal formatprg=clang-format\ -style=file\ 2>/dev/null
	autocmd Filetype cpp,c setlocal foldmethod=syntax
	"compile
	autocmd Filetype cpp setlocal makeprg=clear\ &&\ clang++\ -W{all,extra,pedantic}\ -fno-caret-diagnostics\ -fsanitize=undefined\ -ggdb\ -std=c++17\ %
augroup END

augroup subtitles
	autocmd!
	autocmd BufRead *.srt :setlocal nobomb fileencoding=utf8 fileformat=unix
	autocmd BufRead *.srt :setlocal nocindent
	autocmd BufRead *.srt :nnoremap <buffer><Space> :SubPlay<cr>
	autocmd BufRead *.srt :nnoremap <buffer><leader><Space> :SubPlay video keep-going<cr>
	autocmd BufRead *.ass :nnoremap <buffer><Space> :SubPlay<cr>
	autocmd BufRead *.ass :nnoremap <buffer><leader><Space> :SubPlay video keep-going<cr>
augroup END

augroup file_yaml
    autocmd!
    autocmd FileType yaml let g:editorconfig = v:false
    autocmd FileType yaml set tabstop=2
    autocmd FileType yaml set shiftwidth=2
    autocmd FileType yaml set indentexpr=
augroup END
