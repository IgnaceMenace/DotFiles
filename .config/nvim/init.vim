"Number lines
:set number
:set relativenumber
	
"Map the copy past to/from outside NeoVim (note that this isn't necessary in NeoVim but is in Vim
vnoremap <C-c> "+y
map <C-p> "+P

"Change the tab length from 8 to 4
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set autoindent
:set encoding=utf-8
:set colorcolumn=80

"Enable mouse support
:set mouse=a

"Enable the plug-in manager after download, the plug ion is named vim-plug
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin()
"don't forget to run PlugInstall
"install vim-ariline, a status bar
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ryanoasis/vim-devicons'
"install NerdTree, a file explorer
Plug 'preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

:let g:NERDTreeWinSize=20

"Configure shortcut for NERDTree

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

autocmd VimEnter * Tagbar

:tnoremap <Esc> <C-\><C-n>
:let g:tagbar_width=15
