" Sortcuts
let mapleader = " "
nnoremap j gj
nnoremap k gk
inoremap jk <esc>
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>\| :vsp<cr>
nnoremap <leader>_ :sp<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

" Quick tab change with leader
for i in range(1,9) 
	execute 'nnoremap <leader>'.i.' '.i.'gt'
endfor
nnoremap <leader>tn :tabedit<space>

" Quick edit handy files
nnoremap <leader>emf :e ~/dotfiles/Makefile<cr>
" vim
nnoremap <leader>evr :e $MYVIMRC<cr>
nnoremap <leader>evp :e ~/.vim/plugins.vim<cr>
nnoremap <leader>eva :e ~/.vim/aliases.vim<cr>
" zshrc
nnoremap <leader>ezr  :e ~/.zshrc<cr>
nnoremap <leader>eza  :e ~/dotfiles/zsh/aliases.zsh<cr>
" tmux
nnoremap <leader>etc :e ~/.tmux.conf<cr>
nnoremap <leader>etz :e ~/.tmux/tmux.zsh<cr>
" git
nnoremap <leader>egz :e ~/dotfiles/git/git.zsh<cr>
nnoremap <leader>ega :e ~/dotfiles/git/aliases.zsh<cr>
nnoremap <leader>egcg :e ~/.gitconfig<cr>
nnoremap <leader>egeg :e ~/.gitexclude<cr>
nnoremap <leader>egcl :e .git/config<cr>
nnoremap <leader>egel :e .git/info/exclude<cr>
" colors and fonts
nnoremap <leader>ecz :e ~/.colors/colors.zsh<cr>
nnoremap <leader>efz :e ~/.fonts/fonts.zsh<cr>
