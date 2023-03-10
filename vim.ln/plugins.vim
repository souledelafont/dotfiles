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
Plug 'csexton/jekyll.vim'

" Colors and themes
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'sheerun/vim-polyglot'

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
let g:ale_linters = {'rust' : ['xargo'], 'asm' : ['nasm']}

" tmuxline
let g:tmuxline_theme = 'lightline'

" Jekyll
let g:jekyll_path = "~/Documents/jzck.github.io/"
