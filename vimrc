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
set number

let mapleader = "-"

"Add quick access to .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Cscope things"
set cscopequickfix=s-,c-,d-,i-,t-,e-

:nnoremap <leader>fd :cscope find 1 <c-r><c-w><cr>
:inoremap lkj <Esc>
