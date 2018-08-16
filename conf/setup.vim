"""""""""""""""""""""""""""""""""
" Install plugins.
"""""""""""""""""""""""""""""""""
set runtimepath+=~/.nan_vimrc/.vundle/Vundle.vim

set nocompatible " Required.
filetype off     " Required.

let s:install_dir = expand('<sfile>:p:h')."/.."
call vundle#begin(s:install_dir . '/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomasr/molokai'
Plugin 'szw/vim-maximizer'
Plugin 'talek/obvious-resize'
Plugin 'wesQ3/vim-windowswap'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'qpkorr/vim-bufkill'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-expand-region'

Plugin 'tpope/vim-fugitive'
Plugin 'MattesGroeger/vim-bookmarks'

Plugin 'Yggdroot/indentLine'
Plugin 'kien/tabman.vim'
Plugin 'IndexedSearch'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rosenfeld/conque-term'
Plugin 'thaerkh/vim-workspace'

call vundle#end()

filetype plugin indent on
