set nocompatible              " be iMproved, required
filetype plugin indent on    " required
set backspace=indent,eol,start
syntax on 
set encoding=utf-8
set clipboard=unnamedplus
set number
let mapleader = " "
set termguicolors
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
set cursorline
let mapleader = " "

"au filetype go inoremap <buffer> . .<C-x><C-o>
:map <Leader>g :NERDTreeToggle<CR>
