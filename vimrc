set nocompatible              " be iMproved, required
set rtp+=~/.fzf
filetype plugin indent on    " required

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Turn on syntax highlighting.
syntax on 

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
"set mouse+=a

set encoding=utf-8
set clipboard=unnamedplus
set number
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

" Default vim completion
" set omnifunc=syntaxcomplete#Complete

" Use ALE for completion
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

set completeopt=menuone,preview,noinsert,noselect

let g:ale_linters = {
    \   'python': ['pylint'],
    \   'go': ['gopls', 'golint'],
    \}
let g:ale_fixers = {
    \   'python': ['yapf'],
    \   'go': ['goimports'],
    \}
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
" Indent string is two spaces
let g:ale_python_pylint_options = '--indent-string="  "'
" Lint only when saved
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

"au filetype go inoremap <buffer> . .<C-x><C-o>
:nnoremap <Leader>g :NERDTreeToggle<CR>
:nnoremap <Leader>j :ALEGoToDefinition<CR>
:nnoremap <Leader>r :ALEFindReferences<CR>
:nnoremap <Leader>f :GGrep<CR>
:nnoremap <Leader>= :ALEFix<CR>

" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
