" Plugin
set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

" Core
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-obsession'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-eunuch'
Plug 'w0rp/ale'

" Testing
Plug 'ludovicchabant/vim-gutentags'

" Colors and themes
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'

" Stopped using
" Plug 'edkolev/tmuxline.vim'
" Plug 'tpope/vim-vinegar'
" Plug 'rizzatti/dash.vim'
" Plug 'junegunn/goyo.vim' " prose mode
" Plugin 'Valloric/YouCompleteMe' " replaced with syntastic (async vim8.0)
" Plugin 'maralla/completor.vim'
" Plugin 'vim-scripts/netrw.vim'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-easytags'
" Plugin 'scrooloose/nerdtree' " replaced with ctrl p
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'ctrlpvim/ctrlp.vim' " replaced with fzf
" Plug 'vim-airline/vim-airline' " replaced with lightline
" Plug 'vim-airline/vim-airline-themes'

call plug#end()
filetype plugin indent on

" FZF settings
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>

" guttentags
let g:gutentags_ctags_tagfile = ".tags"

" ALE
" source ~/.vim/c.vim " ale config for C

" tmuxline
let g:tmuxline_theme = 'lightline'
