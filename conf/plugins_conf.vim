set nocompatible
filetype off

"""""""""""""""""""""""""""""""""
" Load Vundle.vim
"""""""""""""""""""""""""""""""""
let s:install_dir = expand('<sfile>:p:h')."/.."
call vundle#begin(s:install_dir . '/plugins')
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""
" Config vim-colors-solarized
"""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized
