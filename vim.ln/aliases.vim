let mapleader = " "

" movement stuff
nnoremap j gj
nnoremap k gk
inoremap jk <esc>l

" search
nnoremap u uzz
nnoremap n nzz
nnoremap N Nzz
" clear current search
nnoremap <leader><space> :let @/ = ""<cr>

" buffers
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" splits
nnoremap <leader>_ :sp<CR>
nnoremap <leader>\| :vsp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>i :set list!<CR>
nnoremap <leader>sh :Stdheader<CR>

" Move blocks nicely
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" tabs
for i in range(1,9)
	execute 'nnoremap <leader>'.i.' '.i.'gt'
endfor

" dotfile install script
nnoremap <leader>ein :edit ~/dotfiles/install.sh<cr>

" vim
nnoremap <leader>evr :edit $MYVIMRC<cr>
nnoremap <leader>evp :edit ~/.vim/plugins.vim<cr>
nnoremap <leader>eva :edit ~/.vim/aliases.vim<cr>
nnoremap <leader>evf :edit ~/.vim/myfiletypes.vim<cr>

" zsh
nnoremap <leader>ezr :edit ~/.zshrc<cr>
nnoremap <leader>ezpr :edit ~/dotfiles/zsh/zpreztorc.ln<cr>
nnoremap <leader>eza :edit ~/dotfiles/zsh/aliases.zsh<cr>

" tmux
nnoremap <leader>etc :edit ~/.tmux.conf<cr>
nnoremap <leader>etz :edit ~/.tmux/tmux.zsh<cr>

" docker
nnoremap <leader>edz :edit ~/dotfiles/docker/docker.zsh<cr>
nnoremap <leader>edu :edit ~/dotfiles/docker/ubuntu-dev.docker<cr>

" git
nnoremap <leader>egz :edit ~/dotfiles/git/git.zsh<cr>
nnoremap <leader>ega :edit ~/dotfiles/git/aliases.zsh<cr>
nnoremap <leader>egcg :edit ~/.gitconfig<cr>
nnoremap <leader>egeg :edit ~/.gitexclude<cr>
nnoremap <leader>egcl :edit .git/config<cr>
nnoremap <leader>egel :edit .git/info/exclude<cr>
nnoremap <leader>egi :edit .gitignore<cr>

" Mailing-> mutt/procmail
nnoremap <leader>emr :edit ~/.mutt/muttrc<cr>
nnoremap <leader>emc :edit ~/.mutt/mailcap<cr>
nnoremap <leader>emb :edit ~/.mutt/bin<cr>
nnoremap <leader>emf :edit ~/.forward<cr>
nnoremap <leader>epr :edit ~/.procmail/procmailrc<cr>

" colors/fonts
nnoremap <leader>ecz :edit ~/.colors/colors.zsh<cr>
nnoremap <leader>efz :edit ~/.fonts/fonts.zsh<cr>
