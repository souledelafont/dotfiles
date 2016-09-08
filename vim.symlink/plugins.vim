" Plugin
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Core
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Testing
Plugin 'rizzatti/dash.vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'Raimondi/delimitMate'

" Colors and themes
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-scripts/gnuplot-syntax-highlighting'

" Plugin 'ryanoasis/vim-devicons'

call vundle#end()
filetype plugin indent on

" Plugin settings
" vim-airline settings
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:bufferline_echo = 0
let g:airline_theme='base16'
" let g:airline#extensions#tabline#enabled = 1

" ctrlp settings
let g:ctrlp_map = '<leader>p'

" NERDTree settings
nnoremap <leader>n :NERDTreeTabsToggle<cr>
let NERDTreeIgnore = ['\.aux$','\.o$','\.pdf$','\.toc$']
