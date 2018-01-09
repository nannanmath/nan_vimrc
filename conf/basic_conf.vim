" Lines of history Vim has to remeber.
set history=500

" Enable filetype plugins.
filetype plugin on
filetype indent on

" Auto write & read when a file is changed from the outside.
set autowrite
set autoread

" Set <leader>.
let mapleader=","
let g:mapleader=","

" Deal with unsaved file.
set confirm

" Turn backup off.
set nobackup
set nowb
set noswapfile

" Hidden startup message.
set shortmess=atI

" Save file for handling the permission-denied error.
command W w !sudo tee % > /dev/null

" Show line number $ position.
set nu
set ruler

" Moving with 7 lines.
set so=7

" Encoding & Language.
set encoding=utf8
set ffs=unix,dos,mac
set ff=unix
let $LANG='en'

" Tab 
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
" Tab length on some file types.
autocmd FileType c setloack shiftwidth=2 tabstop=2 softtabstop=2

" Linebreak
set lbr
set tw=500

" Indent
set ai
set si
set wrap

" Wildmenu
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*

" Height of command bar.
set cmdheight=2

" Buffer becomes hidden when it it abandoned.
set hid

" Configure backspace.
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Searching config.
set ignorecase
set smartcase
set hlsearch
set incsearch
" Disable highlight.
noremap <silent> <leader><CR> :noh<CR>

" Don't redraw while executing macros.
set lazyredraw

" Regular expression.
set magic

" No sound on errors.
set noerrorbells
set novisualbell
set t_vb= 
set tm=500 
" Add a bit extra margin to the left.
set foldcolumn=1

" Enable syntax hignlighting.
syntax enable

" Navigate windows.
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-h> <C-w>h
inoremap <C-l> <C-w>l
