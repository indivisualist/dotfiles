if has('vim_starting')
set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
 
" prepare NeoBundle for plugin management
call neobundle#rc(expand('~/.vim/bundle/'))
" plugins managed by NeoBundle
" usage:
" 1) add GitHub path
" 2) run :NeoBundleInstall or bin/neoinstall
NeoBundleFetch 'Shougo/neobundle.vim'	" plugin management
NeoBundle 'bling/vim-airline'	" status line
NeoBundle 'scrooloose/nerdtree'	" file system tree
NeoBundle 'bling/vim-bufferline'	" show list of buffers in bar
NeoBundle 'tpope/vim-fugitive'	" Git wrapper
 
filetype plugin indent on
syntax on
 
" some settings for the beautiful bar
set laststatus=2	" always show bar
set noshowmode	" hide mode bar. we use vim-airline
set ttimeoutlen=50	" fix delay for leaving insert mode
let g:airline_powerline_fonts = 1
 
" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
 
set hlsearch	" search highlighting
set ignorecase	" case insensitive search
set smartcase	" switch to case sensitive with capital letters
set incsearch	" incremental search
 
set backspace=indent,eol,start	" handle backspace better
set autoindent	" indenting if file is unknown
 
set number	" line numbers on
set mouse=a	" enable mouse
 
" fancy optics
if has('gui_running')
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12
endif
"colorscheme molokai
"let g:molokai_original = 1	" colors
let g:rehash256 = 1	" 256 colors
