let mapleader = " "

" Workflow
nnoremap <leader>tn :tabedit<cr>
" nnoremap <leader>e :Ex<cr>
nnoremap <leader>b :ls<CR>:b

" movement stuff
nnoremap j gj
nnoremap k gk
inoremap jk <esc>l

" clear search
nnoremap <leader><space> :let @/ = ""<cr>:AirlineRefresh<cr>
nnoremap u uzz
nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>\| :vsp<CR>
nnoremap <leader>_ :sp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>i :set list!<CR>
nnoremap <leader>sh :Stdheader<CR>
nnoremap <leader>d :Dash<space>

" Move blocks nicely
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Aliases for compiling
autocmd FileType c nnoremap <leader>cc :!clear && gcc -Wall -Wextra -Werror *.c && ./a.out<cr>
autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType fortran nnoremap <leader>cc :!clear && gfortran % && ./a.out<cr>
autocmd FileType tex nnoremap <leader>cc :!pdflatex %<cr>

" Aliases for GNU make
nnoremap <leader>mm :make<CR>
nnoremap <leader>mt :make test<CR>

" Aliases for tabs
for i in range(1,9)
	execute 'nnoremap <leader>'.i.' '.i.'gt'
endfor

" Aliases for notes on dropbox
" nnoremap <leader>en :edit ~/Dropbox/notes/master<cr>

" Aliases for opening dotfiles
nnoremap <leader>emf :edit ~/dotfiles/makefile<cr>
nnoremap <leader>evr :edit $MYVIMRC<cr>
nnoremap <leader>evp :edit ~/.vim/plugins.vim<cr>
nnoremap <leader>eva :edit ~/.vim/aliases.vim<cr>
nnoremap <leader>evf :edit ~/.vim/myfiletypes.vim<cr>
nnoremap <leader>ezr :edit ~/.zshrc<cr>
nnoremap <leader>ezpr :edit ~/dotfiles/zsh/zpreztorc.ln<cr>
nnoremap <leader>eza :edit ~/dotfiles/zsh/aliases.zsh<cr>
nnoremap <leader>ezc :edit ~/dotfiles/zsh/quick-compile.zsh<cr>
nnoremap <leader>etc :edit ~/.tmux.conf<cr>
nnoremap <leader>etz :edit ~/.tmux/tmux.zsh<cr>
nnoremap <leader>efa :edit ~/dotfiles/fortran/aliases.zsh<cr>
nnoremap <leader>egz :edit ~/dotfiles/git/git.zsh<cr>
nnoremap <leader>ega :edit ~/dotfiles/git/aliases.zsh<cr>
nnoremap <leader>egcg :edit ~/.gitconfig<cr>
nnoremap <leader>egeg :edit ~/.gitexclude<cr>
nnoremap <leader>egcl :edit .git/config<cr>
nnoremap <leader>egel :edit .git/info/exclude<cr>
nnoremap <leader>egi :edit .gitignore<cr>
nnoremap <leader>ecz :edit ~/.colors/colors.zsh<cr>
nnoremap <leader>efz :edit ~/.fonts/fonts.zsh<cr>
