set nocompatible              " be iMproved, required
set rtp+=~/.fzf
filetype plugin indent on    " required
set backspace=indent,eol,start
syntax on 
set encoding=utf-8
set clipboard=unnamedplus
set number
let mapleader = " "
set termguicolors
colorscheme gruvbox
set background=dark    " Setting dark mode
"set background=light   " Setting light mode
set cursorline
let mapleader = " "

au BufNewFile,BufRead *.py
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let g:ale_linters = {
    \   'python': ['pylint'],
    \   'go': ['golint'],
    \}
let g:ale_fixers = {
    \   'python': ['yapf'],
    \   'go': ['gofmt'],
    \}
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
" Indent string is two spaces
let g:ale_python_pylint_options = '--indent-string="  "'

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

"au filetype go inoremap <buffer> . .<C-x><C-o>
:nnoremap <Leader>g :NERDTreeToggle<CR>
:nnoremap <Leader>j :YcmCompleter GoTo<CR>
:nnoremap <Leader>t :YcmCompleter GetType<CR>
:nnoremap <Leader>f :GGrep<CR>
:nnoremap <Leader>= :ALEFix<CR>

" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
