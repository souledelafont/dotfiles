let mapleader = " "

" leader stuff
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap N Nzz
inoremap jk <esc>
nnoremap <leader><space> :nohlsearch<cr>:AirlineRefresh<cr>
nnoremap <leader>sh :Stdheader<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>d :Dash<space>
nnoremap <leader>\| :vsp<cr>
nnoremap <leader>_ :sp<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>i :set list!<cr>

" Move blocks nicely
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Aliases for compiling
autocmd FileType c nnoremap <leader>cc :!clear && gcc -Wall -Wextra -Werror *.c && ./a.out<cr>
autocmd FileType fortran nnoremap <leader>cc :!clear && gfortran % && ./a.out<cr>
nnoremap <leader>cm :!clear && make<cr>

" Aliases for tabs
for i in range(1,9)
	execute 'nnoremap <leader>'.i.' '.i.'gt'
endfor

nnoremap <leader>tn :tabedit<space>

" Aliases for opening dotfiles
nnoremap <leader>en :edit ~/Dropbox/notes/master<cr>

" Aliases for opening dotfiles
nnoremap <leader>emf :edit ~/dotfiles/makefile<cr>
nnoremap <leader>evr :edit $MYVIMRC<cr>
nnoremap <leader>evp :edit ~/.vim/plugins.vim<cr>
nnoremap <leader>eva :edit ~/.vim/aliases.vim<cr>
nnoremap <leader>evf :edit ~/.vim/myfiletypes.vim<cr>
nnoremap <leader>ezr :edit ~/.zshrc<cr>
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
nnoremap <leader>ecz :edit ~/.colors/colors.zsh<cr>
nnoremap <leader>efz :edit ~/.fonts/fonts.zsh<cr>
