imap jk <Esc>
set pastetoggle=<F3>
set nocompatible
set ignorecase
set smartcase
set incsearch
set hlsearch
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set formatoptions=tcq
syntax on
set spelllang=en
set cryptmethod=blowfish2
set textwidth=180
"set spellfile=/usr/share/dict/words.utf-8.add  " location may vary, change file to end in <file>.utf-8.add
set ruler
set modeline
set modelines=5
filetype plugin indent on
let g:tex_flavor='latex'
let g:loaded_matchparen=1 " don't jump the the matched parenthesis/bracken on hover
set dir=~/.tmp//  " Where to make tmp files for vim so they don't end up in git repos
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
