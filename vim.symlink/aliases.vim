let mapleader = " "

" leader stuff
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap N Nzz
inoremap jk <esc>
nnoremap <leader><space> :nohlsearch<cr>:AirlineRefresh<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
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
autocmd FileType c nnoremap <leader>c :!clear && gcc -Wall -Wextra -Werror *.c && ./a.out<cr>
autocmd FileType fortran nnoremap <leader>c :!clear && gfortran % && ./a.out<cr>
nnoremap <leader>m :!clear && make<cr>

" Aliases for tabs
for i in range(1,9)
	execute 'nnoremap <leader>'.i.' '.i.'gt'
endfor

nnoremap <leader>tn :tabedit<space>

" Aliases for opening dotfiles
nnoremap <leader>en :tabedit ~/Dropbox/notes/master<cr>

" Aliases for opening dotfiles
nnoremap <leader>emf :tabedit ~/dotfiles/makefile<cr>
nnoremap <leader>evr :tabedit $MYVIMRC<cr>
nnoremap <leader>evp :tabedit ~/.vim/plugins.vim<cr>
nnoremap <leader>eva :tabedit ~/.vim/aliases.vim<cr>
nnoremap <leader>evf :tabedit ~/.vim/myfiletypes.vim<cr>
nnoremap <leader>ezr :tabedit ~/.zshrc<cr>
nnoremap <leader>eza :tabedit ~/dotfiles/zsh/aliases.zsh<cr>
nnoremap <leader>ezc :tabedit ~/dotfiles/zsh/quick-compile.zsh<cr>
nnoremap <leader>etc :tabedit ~/.tmux.conf<cr>
nnoremap <leader>etz :tabedit ~/.tmux/tmux.zsh<cr>
nnoremap <leader>efa :tabedit ~/dotfiles/fortran/aliases.zsh<cr>
nnoremap <leader>egz :tabedit ~/dotfiles/git/git.zsh<cr>
nnoremap <leader>ega :tabedit ~/dotfiles/git/aliases.zsh<cr>
nnoremap <leader>egcg :tabedit ~/.gitconfig<cr>
nnoremap <leader>egeg :tabedit ~/.gitexclude<cr>
nnoremap <leader>egcl :tabedit .git/config<cr>
nnoremap <leader>egel :tabedit .git/info/exclude<cr>
nnoremap <leader>ecz :tabedit ~/.colors/colors.zsh<cr>
nnoremap <leader>efz :tabedit ~/.fonts/fonts.zsh<cr>
