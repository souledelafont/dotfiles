set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Core
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

" Colors and themes
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on
