"""""""""""""""""""""""""""""""""
" Install plugins.
"""""""""""""""""""""""""""""""""
set runtimepath+=~/.nan_vimrc/.vundle/Vundle.vim

set nocompatible " Required.
filetype off     " Required.

let s:install_dir = expand('<sfile>:p:h')."/.."
call vundle#begin(s:install_dir . '/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'haya14busa/incsearch.vim'
Plugin 'matze/vim-move'
Plugin 'szw/vim-maximizer'
Plugin 'talek/obvious-resize'
Plugin 'wesQ3/vim-windowswap'
Plugin 'airblade/vim-rooter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'qpkorr/vim-bufkill'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-expand-region'

Plugin 'tpope/vim-fugitive'

Plugin 'Yggdroot/indentLine'
Plugin 'kien/tabman.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rosenfeld/conque-term'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

call vundle#end()

filetype plugin indent on
