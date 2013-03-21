syntax on			" syntax supporting

colo desert 

filetype on
filetype plugin on
filetype indent on

call pathogen#infect()

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1                                                                
set termencoding=utf-8
set encoding=utf-8
"set ffs=unix,dos,mac    " set Unix as the standard file type
set background=dark

set expandtab		" set spaces of tab and indent
set shiftwidth=4    " 1 tab == 4 spaces
set tabstop=4

set autoindent		" indent automaticaly
set smartindent

set showmatch		" show code match
set laststatus=2	" always show status line
set number			" show line number
set autoread		" reload the file if modified with another editor
set ruler           " always show current line
set go=e
set cursorline		" 
set ignorecase      " ignore case when searching
set magic           " for regular expressions turn magic on
set hls				" highlight matched words when searching
set helplang=cn		" language in help	

set so=3
"set foldmethod=syntax	" enable code folding


" powerline {
"set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols='fancy'
" }
set guifont=Monaco:h14

" switch tabpages with Ctrl h/l
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"taglist {
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
nnoremap <leader>tl : Tlist<CR>
"}

"nerdcommenter {

"

:map <F2> <Esc>:NERDTree<CR>
:map <F3> <Esc>:Tlist<CR>
