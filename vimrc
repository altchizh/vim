set nocompatible              " be iMproved, required
set rtp+=~/.fzf
filetype plugin indent on    " required
set backspace=indent,eol,start
set rtp+=~/.fzf
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

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

"au filetype go inoremap <buffer> . .<C-x><C-o>
:nnoremap <Leader>g :NERDTreeToggle<CR>
:nnoremap <Leader>j :YcmCompleter GoTo<CR>
:nnoremap <Leader>t :YcmCompleter GetType<CR>
:nnoremap <Leader>f :GGrep<CR>
