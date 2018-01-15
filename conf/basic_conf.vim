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

" Searching config.
set ignorecase
set smartcase
set hlsearch
set incsearch
" Search enable.
"Incremental searching.
inoremap <C-s> <C-o>:call <SID>StartSearch()<CR><C-o>/
inoremap <C-r> <C-o>:call <SID>StartSearch()<CR><C-o>?
" Disable highlight.
noremap <silent> <leader><CR> :noh<CR>

" Save files.
noremap <C-x><C-s> :update<CR>
inoremap <C-x><C-s> <C-o>:update<CR>

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

""""""""""""""""""""
"  Basic mappings  "
""""""""""""""""""""
set <M-a>=<Esc>a
set <M-b>=<Esc>b
noremap <M-x> :
set <M-x>=\ex

" Cursor moving.
imap <C-b> <Left>
vmap <C-b> <Left>
omap <C-b> <Left>
imap <C-f> <Right>
vmap <C-f> <Right>
omap <C-f> <Right>
imap <C-p> <Up>
vmap <C-p> <Up>
omap <C-p> <Up>
imap <C-n> <Down>
vmap <C-n> <Down>
omap <C-n> <Down>
imap <C-a> <Home>
vmap <C-a> <Home>
omap <C-a> <Home>
imap <C-e> <End>
vmap <C-e> <End>
omap <C-e> <End>
noremap <M-a> <C-o>(
vnoremap <M-a> (
onoremap <M-a> (
inoremap <M-e> <C-o>)
vnoremap <M-e> )
onoremap <M-e> )
inoremap <C-d> <Del>
vnoremap <C-d> <Del>
onoremap <C-d> <Del>
inoremap <M-<> <C-o>1G<C-o>0
vnoremap <M-<> 1G0
onoremap <M-<> 1G0
inoremap <M->> <C-o>G<C-o>$
vnoremap <M->> G$
onoremap <M->> G$
inoremap <C-v> <PageDown>
vnoremap <C-v> <PageDown>
onoremap <C-v> <PageDown>
inoremap <M-v> <PageUp>
vnoremap <M-v> <PageUp>
onoremap <M-v> <PageUp>
inoremap <C-x>= <C-g>
vnoremap <C-x>= <C-g>
onoremap <C-x>= <C-g>
inoremap <silent> <M-g> <C-o>:call <SID>GotoLine()<CR>
vnoremap <silent> <M-g> :<C-u>call <SID>GotoLine()<CR>
onoremap <silent> <M-g> :call <SID>GotoLine()<CR>
inoremap <silent> <C-x>g <C-o>:call <SID>GotoLine()<CR>
vnoremap <silent> <C-x>g :<C-u>call <SID>GotoLine()<CR>
onoremap <silent> <C-x>g :call <SID>GotoLine()<CR>
inoremap <script> <M-Left> <SID>BackwardWord
vnoremap <script> <M-Left> <SID>VBackwardWord
onoremap <script> <M-Left> <SID>OBackwardWord
inoremap <script> <M-Right> <SID>ForwardWord
vnoremap <script> <M-Right> <SID>VForwardWord
onoremap <script> <M-Right> <SID>OForwardWord
inoremap <script> <C-Left> <SID>BackwardWord
vnoremap <script> <C-Left> <SID>VBackwardWord
onoremap <script> <C-Left> <SID>OBackwardWord
inoremap <script> <C-Right> <SID>ForwardWord
vnoremap <script> <C-Right> <SID>VForwardWord
onoremap <script> <C-Right> <SID>OForwardWord
inoremap <C-Up> <C-o>{
vnoremap <C-Up> {
onoremap <C-Up> {
inoremap <C-Down> <C-o>}
vnoremap <C-Down> }
onoremap <C-Down> }




" noremap <M-x> :
" Navigate windows.
noremap <S-Down> <C-w>j
noremap <S-Up> <C-w>k
noremap <S-Left> <C-w>h
noremap <S-Right> <C-w>l
inoremap <S-Down> <ESC><C-w>j
inoremap <S-Up> <ESC><C-w>k
inoremap <S-Left> <ESC><C-w>h
inoremap <S-Right> <ESC><C-w>l

"""""""""""""""""""""
"  Help functions.  "
"""""""""""""""""""""
"Mark a cursor position and restore it afterward.
function! <SID>Mark()
    let mark = line(".") . "G" . virtcol(".") . "|"
    normal! H
    let mark = "normal!" . line(".") . "Gzt" . mark
    execute mark
    return mark
endfunction

" Start search.
function! <SID>StartSearch()
    set nowrapscan
    cnoremap <C-s> <C-c><C-o>:call <SID>SearchAgain()<CR><C-o>/<Up>
    cnoremap <C-r> <C-c><C-o>:call <SID>SearchAgain()<CR><C-o>?<Up>
    cnoremap <silent> <CR> <CR><C-o>:call <SID>StopSearch()<CR>
    cnoremap <silent> <C-g> <C-c><C-o>:call <SID>AbortSearch()<CR>
    cnoremap <silent> <ESC> <C-c><C-o>:call <SID>AbortSearch()<CR>
    let s:before_search_mark = <SID>Mark()
endfunction

" Search again.
function! <SID>SearchAgain()
    let current_pos = <SID>Mark()
    if search(@/, 'W') == 0
        set wrapscan
    else
        execute current_pos
    endif

    cnoremap <C-s> <CR><C-o>:call <SID>SearchAgain()<CR><C-o>/<Up>
    cnoremap <C-r> <CR><C-o>:call <SID>SearchAgain()<CR><C-o>?<Up>
endfunction

" Stop search.
function! <SID>StopSearch()
    cunmap <C-s>
    cunmap <C-r>
    cunmap <CR>
    cunmap <C-g>
    cnoremap <C-g> <C-c>
endfunction

" Abort search.
function! <SID>AbortSearch()
    call <SID>StopSearch()
    execute s:before_search_mark
    unlet s:before_search_mark
endfunction

" Set & restore virtualedit.
function! <SID>SetVirtualedit()
    let s:saved_virtualedit = &virtualedit
    set virtualedit=all
endfunction

function! <SID>RestoreVirtualedit()
    let &virtualedit = s:saved_virtualedit
endfunction

" Forward & backward one word.
function! <SID>ForwardWord()
    if col('.')>1 || line('.')>1
        return "normal! hel"
    else
        return "normal! el"
    endif
endfunction

function! <SID>BackwardWord()
    let l:line = line('.')
    let l:getline = getline(l:line)
    if col('.')==1 || strpart(l:getline,0,col('.')-1) =~ '^\s*$'
        let l:count = l:line-1 - prevnonblank(l:line-1)
        if l:count > 0
            return "normal! " . l:count . "kb"
        endif
    endif
    if col('.')>=col('$') && line('.')<line('$')
        return "normal! lb"
    else
        return "normal! b"
    endif
endfunction

inoremap <silent> <SID>ForwardWord <C-o>:call <SID>SetVirtualedit()<CR>
    \<C-o>:execute <SID>ForwardWord()<CR>
    \<C-o>:call <SID>RestoreVirtualedit()<CR>

inoremap <silent> <SID>BackwardWord <C-o>:call <SID>SetVirtualedit()<CR>
    \<C-o>:execute <SID>BackwardWord()<CR>
    \<C-o>:call <SID>RestoreVirtualedit()<CR>

nmap <SID>Nop <Nop>
function! <SID>ExitVisual()
    if ! &insertmode
        startinsert
    else
        normal! <SID>Nop
    endif
endfunction

function <SID>VForwardWord1()
    if col('.')>=col('$')
        let s:vforward_fix = 1
    else
        let s:vforward_fix = 0
    endif
endfunction

function <SID>VForwardWord2()
    if s:vforward_fix
        return "\<C-o>gv``\<Right>"
    else
        return "\<C-o>gv``"
    endif
endfunction

function <SID>AdjustVisualModeExitPosition(backwards)
    if line('.')==line("'>") && col('.')+1 == col("'>")
        if !a:backwards || line('.')!=line("'<") || col('.') != col("'<")
            return "\<Right>"
        endif
    elseif line('.')==line("'<") && col('.')+1 == col("'<")
        return "\<Right>"
    endif
    return ""
endfunction

vnoremap <silent> <SID>VForwardWord <C-c>
    \:call <SID>ExitVisual()<CR>
    \<C-r>=<SID>AdjustVisualModeExitPosition(0)<CR>
    \<C-o>:call <SID>SetVirtualedit()<CR>
    \<C-o>:execute <SID>ForwardWord()<CR>
    \<C-o>:call <SID>VForwardWord1()<CR>
    \<C-o>m`
    \<C-o>:call <SID>RestoreVirtualedit()<CR>
    \<C-r>=<SID>VForwardWord2()<CR>

vnoremap <silent> <SID>VBackwardWord <C-c>
    \:call <SID>ExitVisual()<CR>
    \<C-r>=<SID>AdjustVisualModeExitPosition(1)<CR>
    \<C-o>:call <SID>SetVirtualedit()<CR>
    \<C-o>:execute <SID>BackwardWord()<CR>
    \<C-o>m`
    \<C-o>:call <SID>RestoreVirtualedit()<CR>
    \<C-o>gv
    \``
