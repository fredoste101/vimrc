"Disable arrow keyes for authentic vim experience
" Remove newbie crutches in Command Mode
cnoremap 	<Down>	<Nop>
cnoremap 	<Left> 	<Nop>
cnoremap 	<Right>	<Nop>
cnoremap 	<Up> 	<Nop>

" Remove newbie crutches in Insert Mode
inoremap 	<Down> 	<Nop>
inoremap 	<Left> 	<Nop>
inoremap 	<Right> <Nop>
inoremap 	<Up> 	<Nop>

" Remove newbie crutches in Normal Mode
nnoremap 	<Down> 	<Nop>
nnoremap 	<Left> 	<Nop>
nnoremap 	<Right> <Nop>
nnoremap 	<Up> 	<Nop>

" Remove newbie crutches in Visual Mode
vnoremap 	<Down> 	<Nop>
vnoremap 	<Left> 	<Nop>
vnoremap 	<Right> <Nop>
vnoremap 	<Up> 	<Nop>

"Set default scrolloffset
set scrolloff=5

set nocp                    " 'compatible' is not set
filetype plugin on          " plugins are enabled

syntax on

"Line numbers are on
set number

"My leader is -
let mapleader = "-"

"Add quick access to .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Cscope things"
set cscopequickfix=s-,c-,d-,i-,t-,e-

"Find Definitions of function or variable
:nnoremap <leader>fd :cscope find 1 <c-r><c-w><cr>

"map Escape to easily be able to reach normal mode any time
:inoremap lkj <Esc>
:vnoremap lkj <Esc>

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'stephpy/vim-yaml'
call plug#end()

"https://stackoverflow.com/questions/6852763/how-to-make-vim-quickfix-list-launch-files-in-a-new-tab
set switchbuf+=usetab,newtab

set hlsearch
set incsearch
set showcmd
set wildmenu

