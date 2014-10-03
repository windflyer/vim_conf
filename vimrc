syntax on			" syntax supporting

filetype on
filetype plugin on
filetype indent on

" add custom highlight labels {
if !exists("autocmd_colorscheme_loaded")
    let autocmd_colorscheme_loaded = 1
    autocmd ColorScheme * highlight Ques  ctermbg=Blue ctermfg=White guibg=Blue guifg=White
    autocmd ColorScheme * highlight MyDbg ctermbg=Red  ctermfg=White guibg=Red  guifg=White
endif

if has("autocmd")
    if v:version > 701
        autocmd Syntax * call matchadd('Ques', '\W\zs\(QUES\)')
        autocmd Syntax * call matchadd('MyDbg', '\W\zs\(NOTE\|INFO\|IDEA\|BUG\)')
    endif
endif
" }

colorscheme jellybeans

call pathogen#infect()

" endcoding settings {
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1                                                                
set termencoding=utf-8
set encoding=utf-8
set ffs=unix,dos,mac    " set Unix as the standard file type
set background=dark
" }

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
set colorcolumn=80

set so=3
"set foldmethod=syntax	" enable code folding
"set list lcs=tab:\|\    " show | for tab indent

" gui vim font setting {
set guifont=Monaco\ 12  
if has("macunix")
    set guifont=Monaco:h14
endif
" }

" switch tabpages with Ctrl h/l {
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
" }

" powerline {
set nocompatible    " not compatible with vi
set t_Co=256
let g:Powerline_symbols='fancy'
" }

" taglist {
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1
if has("macunix")
    let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
endif
nnoremap <leader>tl : Tlist<CR>
" }

" nerdcommenter {
" }

" nerdtree {
let NERDTreeShowHidden=1
" }

" vim-LaTeX {
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'
" }

" open nerdtree
:map <F2> <Esc>:NERDTree<CR>

" generate tags
:map <C-F3> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" open taglist
:map <F3> <Esc>:Tlist<CR>
