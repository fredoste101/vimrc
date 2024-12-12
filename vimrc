" 'compatible' is not set. I.E vim, not vi
set nocp


"MISC {{{

"Read buffers automatically when they have changed on file system
set autoread


"This colorscheme is alright
colorscheme industry

"My leader is -
let mapleader = "-"

" plugins are enabled
filetype plugin on

syntax on

"augroup CTRLS
"	autocmd!
"	autocmd VimEnter * !stty -ixon
"	autocmd VimLeave * !stty ixon
"augroup END

"}}}


"DISABLE NOOB STUFF {{{
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
"}}}


"VIMRC SPECIFIC {{{
"Set folding specific for vimrc
augroup vimrc
	autocmd!
	autocmd FileType vim :set fdm=marker
augroup END
"}}}


"MAPPINGS {{{
"Add quick access to .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"map Escape to easily be able to reach normal mode any time
:inoremap lkj <Esc>
:vnoremap lkj <Esc>

"move in tabs easier
:nnoremap <c-l> :tabn<CR>
:nnoremap <c-h> :tabp<CR>
:nnoremap <leader>ft :tabn 1<CR>
:nnoremap <leader>mth :tabm -1<CR>
:nnoremap <leader>mtl :tabm +1<CR>

"copy filename of current file
:nnoremap <leader>ycfn :let @" = expand("%:t")<cr>
:nnoremap <leader>ycff :let @" = expand("%")<cr>

"When jumping to prev and next also align screen
:nnoremap <c-o> <c-o>zz
:nnoremap <c-i> <c-i>zz


"CSCOPE {{{ - should be put in augroup
"Find Definitions of function or variable
:nnoremap <leader>fd :cscope find 1 <c-r><c-w><cr>zz
:nnoremap <leader>sfd :vsplit<cr><c-w>l :cscope find 1 <c-r><c-w><cr>zz
:nnoremap <leader>vfd :split<cr><c-w>k  :cscope find 1 <c-r><c-w><cr>zz
:nnoremap <leader>tfd :tab split<CR> :cscope find 1 <c-r><c-w><cr>zz

"Find callee
:nnoremap <leader>fc :cscope find c <c-r><c-w><cr>zz

"Find usage of variable
:nnoremap <leader>fu :cscope find s <c-r><c-w><cr>zz

"Find assignment of variable
:nnoremap <leader>fa :cscope find a <c-r><c-w><cr>zz

"Find a file
:nnoremap <leader>ff :cscope find f <c-r><c-w><cr>

"}}}


"PYTHON {{{ - should be put in augroup
"In python jump to next function
augroup PYTHON
	autocmd!
	autocmd BufNewFile,BufRead *.py nnoremap <buffer> <leader>nf /def [a-zA-Z0-9_]*(<cr>zz:noh<CR>
	autocmd BufNewFile,BufRead *.py nnoremap <buffer> <leader>pf ?def [a-zA-Z0-9_]*(<cr>zz:noh<CR>
	autocmd BufNewFile,BufRead *.py set fdm=indent
	autocmd BufNewFile,BufRead *.py exec "noh"
	autocmd BufNewFile,BufRead *.py exec "normal zR"
augroup END
"}}}


"Ctrl+s to save
:nnoremap <c-s> :w<cr>

"}}}


"PLUGINS {{{

"pathogen {{{
	execute pathogen#infect()
"}}}

"NERDTREE {{{
augroup NERDTREE
	autocmd!
	" Exit Vim if NERDTree is the only window remaining in the only tab.
	"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

	" Open the existing NERDTree on each new tab.
	"autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

	" Mirror the NERDTree before showing it. This makes it the same on all tabs.
	"nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
augroup END
"}}}

"}}}


"OPTIONS {{{

"Line numbers are on
set number

"Set default scrolloffset
set scrolloff=5

"https://stackoverflow.com/questions/6852763/how-to-make-vim-quickfix-list-launch-files-in-a-new-tab
set switchbuf+=usetab,newtab

set hlsearch
set incsearch
set showcmd
set wildmenu

set foldlevel=100


"Cscope things {{{"
set cscopequickfix=s-,c-,d-,i-,t-,e-

"}}}

"}}}
