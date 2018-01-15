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
"command W w !sudo tee % > /dev/null

" Show line number $ position.
set nu
set ruler
" Highlight current column and line.
set cursorcolumn
set cursorline

" Turn mouse off.
set mouse-=a

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
autocmd FileType c,cpp setloack shiftwidth=2 tabstop=2 softtabstop=2

" Linebreak
set lbr
set tw=500

" Indent
set ai
set si
set wrap

" Wildmenu
set wildmenu

set wildignore=*.o,*.so,*~,*.pyc,*.swp,*.zip,*.png,*.jpg,*.gif
set wildignore+=*/tmp/*,*/.git/*

" Height of command bar.
set cmdheight=2

" Buffer becomes hidden when it it abandoned.
set hid

" Turn off pulling down GUI menu.
set winaltkeys=no

" Configure backspace.
set backspace=eol,start,indent
set whichwrap+=b,s,<,>,[,],~,h,l

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
