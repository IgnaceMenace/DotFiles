"Simple configuration of Vim with no-plugin to keep it's responsivness and stability
"To have a more complete IDE check my NeoVim init.lua

" Enable mouse support "
set mouse=a

" Enable numbers "
set number
set relativenumber

" Enable cursor line "
set cursorline

vnoremap <C-c> "+y
map <C-p> "+P

" Show matching symbols {[("
set showmatch

" Set the tab space "
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab

" Autoindent often buggy when copy pasting in vim
":set autoindent

set encoding=utf-8

" Enable the vertical bar "
set colorcolumn=90

" Enable syntax highlighting "
syntax on

"set wildmenu
