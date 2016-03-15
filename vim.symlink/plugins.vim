set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Core
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
" Testing
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Colors and themes
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'edkolev/tmuxline.vim'
call vundle#end()
filetype plugin indent on

" Theme settings 
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set noshowmode
let g:bufferline_echo = 0

" CtrlP settings
let g:ctrlp_map = '<leader>p'

" NERDTree settings
nnoremap <leader>n :NERDTreeTabsToggle<cr>
let NERDTreeMapactivateNode='<leader>'
