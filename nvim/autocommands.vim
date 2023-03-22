"templates on file extension
autocmd! BufNewFile * silent! 0r ~/.local/share/nvim/skeletons/template.%:e
autocmd! BufNewFile,BufRead *.tex set filetype=tex

"open doc files
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword -f -i 1 -w 0 "%"

"TODO: open pdf files


augroup file_cpp
	autocmd!
    "indent (clang-format)
	autocmd FileType cpp,c setlocal formatprg=clang-format\ -style=file\ 2>/dev/null
	autocmd Filetype cpp,c setlocal foldmethod=syntax
	"compile
	autocmd Filetype cpp setlocal makeprg=clear\ &&\ clang++\ -W{all,extra,pedantic}\ -fno-caret-diagnostics\ -fsanitize=undefined\ -ggdb\ -std=c++17\ %
	autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax
	autocmd InsertEnter,WinLeave * setlocal foldmethod=manual
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
