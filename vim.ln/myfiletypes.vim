" filetype specific settings

augroup filetype
	au! BufRead,BufNewFile *.gp		set filetype=gnuplot	" added at UPMC 2016
	au! BufRead,BufNewFile *.sh		set filetype=zsh		" added at 42 2016
	au! BufRead,BufNewFile *.aidl	set filetype=java		" added at Tempow 2017
augroup END

" tpope/vim-commentary settings
autocmd FileType gnuplot setlocal commentstring=#\ %s
" autocmd FileType C setlocal commentstring=//\ %s

" Aliases quick compiling
autocmd FileType c nnoremap <leader>cc :!clear && gcc -Wall -Wextra -Werror *.c && ./a.out<cr>
autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType fortran nnoremap <leader>cc :!clear && gfortran % && ./a.out<cr>
autocmd FileType tex nnoremap <leader>cc :!pdflatex %<cr>
