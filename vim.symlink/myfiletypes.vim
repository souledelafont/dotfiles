augroup filetype
	au! BufRead,BufNewFile *.gp    set filetype=gnuplot
augroup END
autocmd FileType gnuplot setlocal commentstring=#\ %s
