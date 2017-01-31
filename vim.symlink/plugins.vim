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
Plugin 'wellle/targets.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" Testing
Plugin 'rizzatti/dash.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-obsession'
Plugin 'Raimondi/delimitMate'
" Plugin 'xuhdev/vim-latex-live-preview'

" Colors and themes
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-scripts/gnuplot-syntax-highlighting'
"
" Stopped using
" Plugin 'maralla/completor.vim'
" Plugin 'vim-scripts/netrw.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'

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
let g:ctrlp_custom_ignore = '\.[od]$'
let g:ctrlp_prompt_mappings = { 'PrtExit()': ['<esc>', '<c-c>', '<c-g>'] }
let g:ctrlp_working_path_mode = 'a'
set noautochdir
