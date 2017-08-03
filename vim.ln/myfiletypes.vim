augroup filetype
	au! BufRead,BufNewFile *.gp    set filetype=gnuplot		" added this while at UPMC 2016
	au! BufRead,BufNewFile *.sh    set filetype=zsh			" added this while at 42 2016
	au! BufRead,BufNewFile *.aidl    set filetype=java		" added this while at Tempow 2017
augroup END
autocmd FileType gnuplot setlocal commentstring=#\ %s
