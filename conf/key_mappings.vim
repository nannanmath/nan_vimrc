set notimeout
set ttimeout
set timeoutlen=50

" Leave Vim.
inoremap <C-x><C-c> <C-o>:confirm qall<CR>
" Enable help.
inoremap <C-h> <C-o>:h

" Command line mappings.
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <M-Up> <Up>
cnoremap <M-Down> <Down>
cnoremap <C-d> <Del>
cnoremap <C-y> <C-r><C-o>"
cnoremap <M-w> <C-y>
cnoremap <C-k> d$<C-c><End>

" Error recovery.
inoremap <C-_> <C-o>u
inoremap <C-x><C-u> <C-o>u
" Disable highlight.
noremap <silent> <leader><CR> :noh<CR>

" Save files.
noremap <C-x><C-s> :update<CR>
inoremap <C-x><C-s> <C-o>:update<CR>

" Enable command mode.
noremap <M-x> :
inoremap <M-x> <C-o>:
vnoremap <M-x> <C-c>:

" Set <M-(A~Z)> & <M-<a~z>> as <Esc>+A~Z & <Esc>+a~z.
for i in range(65,90) + range(97,122)
    execute "set <M-" . nr2char(i) . ">=\<Esc>" . nr2char(i)
endfor
execute "set <M-%>=\<Esc>%"
execute "set <M-<>=\<Esc><"
"set <M->>=\<Esc>>
execute "set <Char-190>=\<Esc>>"
" Cursor moving.
" Left, Right, Up, Down.
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
" Home, End
imap <C-a> <Home>
vmap <C-a> <Home>
omap <C-a> <Home>
imap <C-e> <End>
vmap <C-e> <End>
omap <C-e> <End>
" Delete character under cursor. 
inoremap <C-d> <Del>
vnoremap <C-d> <Del>
onoremap <C-d> <Del>
" Go to the first and last character of buffer.
inoremap <M-<> <C-o>1G<C-o>0
vnoremap <M-<> 1G0
onoremap <M-<> 1G0
inoremap <M->> <C-o>G<C-o>$
vnoremap <M->> G$
onoremap <M->> G$
" Pageup & PageDown.
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
" Word & Sentence forward and backward. 
inoremap <M-Left> <C-o>( 
vnoremap <M-Left> (
onoremap <M-Left> (
inoremap <M-Right> <C-o>) 
vnoremap <M-Right> )
onoremap <M-Right> )
inoremap <script> <C-Left> <SID>BackwardWord
vnoremap <script> <C-Left> <SID>VBackwardWord
onoremap <script> <C-Left> <SID>OBackwardWord
inoremap <script> <C-Right> <SID>ForwardWord
vnoremap <script> <C-Right> <SID>VForwardWord
onoremap <script> <C-Right> <SID>OForwardWord
" Paragraph forward and backward.
inoremap <C-Up> <C-o>{
vnoremap <C-Up> {
onoremap <C-Up> {
inoremap <C-Down> <C-o>}
vnoremap <C-Down> }
onoremap <C-Down> }

"Incremental 
"
"searching.
inoremap <C-s> <C-o>:call <SID>StartSearch()<CR><C-o>/
inoremap <M-s> <C-o>:call <SID>StartSearch()<CR><C-o>?
" Query & Replace.
inoremap <M-%> <C-o>:call <SID>QueryReplace()<CR>
inoremap <C-M-%> <C-o>:call <SID>QueryReplaceRegexp()<CR>
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
    let mark = "normal!" . line(".") . "G" . virtcol(".") . "|"
    return mark
endfunction

" Start search.
function! <SID>StartSearch()
    let s:incsearch_status = &incsearch
    let s:ignorecase_status = &ignorecase
    let s:smartcase_status = &smartcase
    let s:lazyredraw_status = &lazyredraw
    let s:hls_status = &hls
    set incsearch
    set lazyredraw
    set ignorecase
    set smartcase
    set hls
    cnoremap <C-s> <CR><C-o>/<Up>
    cnoremap <M-s> <CR><C-o>?<Up>
    cnoremap <silent> <CR> <CR><C-o>:call <SID>StopSearch()<CR>
    cnoremap <silent> <C-g> <C-c><C-o>:call <SID>AbortSearch()<CR>
    let s:before_search_mark = <SID>Mark()
endfunction

" Stop search.
function! <SID>StopSearch()
    cunmap <C-s>
    cunmap <M-s>
    cunmap <CR>
    cunmap <C-g>
    cnoremap <C-g> <C-c>
    " Restore wrapscan.
    if exists("s:wrapscan_status")
        let &wrapscan = s:wrapscan_status
        unlet s:wrapscan_status
    endif
    " Restore incsearch.
    if exists("s:incsearch_status")
        let &incsearch = s:incsearch_status
        unlet s:incsearch_status
    endif
    " Restore ignorecase.
    if exists("s:ignorecase_status")
        let &ignorecase = s:ignorecase_status
        unlet s:ignorecase_status
    endif
    " Restore smartcase.
    if exists("s:smartcase_status")
        let &smartcase = s:smartcase_status
        unlet s:smartcase_status
    endif
    " Restore lazyredraw.
    if exists("s:lazyredraw_status")
        let &lazyredraw = s:lazyredraw_status
        unlet s:lazyredraw_status
    endif
    " Restore hls.
    if exists("s:hls_status")
        let &hls = s:hls_status
        unlet s:hls_status
    endif
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

" GotoLine.
function! <SID>GotoLine()
    let targetline = input("Goto line: ")
    if targetline =~ "^\\d\\+$"
        execute "normal! " . targetline . "G0"
    elseif targetline =~ "^\\d\\+%$"
        execute "normal! " . targetline . "%"
    elseif targetline == ""
        echo "(cancelled)"
    else
        echo " <- Not a number"
    endif
endfunction

" Query & Replace.
function! <SID>QueryReplace()
    let magic_status = &magic
    set nomagic
    let searchtext = input("Query replace: ")
    if searchtext == ""
        echo "(no text entered): exiting to Insert mode"
        return
    endif
    let replacetext = input("Query replace " . searchtext . " with: ")
    let searchtext_esc = escape(searchtext,'/\^$')
    let replacetext_esc = escape(replacetext,'/\')
    execute ".,$s/" . searchtext_esc . "/" . replacetext_esc . "/cg"
    let &magic = magic_status
endfunction

function! <SID>QueryReplaceRegexp()
    let searchtext = input("Query replace regexp: ")
    if searchtext == ""
        echo "(no text entered): exiting to Insert mode"
        return
    endif
    let replacetext = input("Query replace regexp " . searchtext . " with: ")
    let searchtext_esc = escape(searchtext,'/')
    let replacetext_esc = escape(replacetext,'/')
    execute ".,$s/" . searchtext_esc . "/" . replacetext_esc . "/cg"
endfunction
