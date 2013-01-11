syntax on			" syntax supporting

colo desert 

filetype on
filetype plugin on
filetype indent on

call pathogen#infect()

set encoding=utf-8
set background=dark

set expandtab		" set spaces of tab and indent
set shiftwidth=4
set tabstop=4

set autoindent		" indent automaticaly
set smartindent

set showmatch		" show code match
set laststatus=2	" always show status line
set number			" show line number
set autoread		" reload the file if modified with another editor
set ruler
set go=e
set cursorline		" 
set hls				" highlight matched words when searching
set helplang=cn		" language in help	
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
