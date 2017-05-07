augroup filetype
	au! BufRead,BufNewFile *.gp    set filetype=gnuplot
	au! BufRead,BufNewFile *.sh    set filetype=zsh
augroup END
autocmd FileType gnuplot setlocal commentstring=#\ %s
