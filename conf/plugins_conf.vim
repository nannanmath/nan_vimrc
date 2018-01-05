set nocompatible
filetype off

"""""""""""""""""""""""""""""""""
" Load plug.vim
"""""""""""""""""""""""""""""""""
let s:install_dir = expand('<sfile>:p:h')."/.."
call plug#begin(s:install_dir . '/plugins')
Plug 'altercation/vim-colors-solarized'
call plug#end()

"""""""""""""""""""""""""""""""""
" Config vim-colors-solarized
"""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized
