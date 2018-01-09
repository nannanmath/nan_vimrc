"""""""""""""""""""""""""""""""""
" Config molokai & lightline
"""""""""""""""""""""""""""""""""
set laststatus=2
if !has('gui_running')
    set t_Co=256
    colorscheme molokai
endif
set noshowmode

"""""""""""""""""""""""""""""""""
" Config nerdtree
"""""""""""""""""""""""""""""""""
noremap <F3> :NERDTreeToggle<CR>
noremap <leader>f :NERDTreeFind<CR>
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__']
let g:NERDTreeWinSize=35
let g:NERDTreeDirArrowExpandable='>'
let g:NERDTreeDirArrowCollapsible='v'

"""""""""""""""""""""""""""""""""
" Config bufexplorer 
"""""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
noremap <C-x>b :BufExplorer<CR>

"""""""""""""""""""""""""""""""""
" Config mru.vim
"""""""""""""""""""""""""""""""""
let MRU_Max_Entries=400
noremap <C-x>f :MRU<CR>

"""""""""""""""""""""""""""""""""
" Config ctrlp
"""""""""""""""""""""""""""""""""
let g:ctrlp_map='<C-p>f' " Search files in current dir.
let g:ctrlp_cmd='CtrlP'
"window Search files in MRU.
nnoremap <C-x>m :CtrlPMRU<CR>
" List files in Buffer.
nnoremap <C-x>b :CtrlPBuffer<CR>
" Show hidden files.
let g:ctrlp_show_hidden=1
" Ignore files.
let g:ctrlp_custom_ignore={
    \ 'dir': '\v[\/].(git|hg|svn)$',
    \ 'file': '\v\.(pyc|pyo|exe|so|dll)$',
    \ }
" Search path.
let g:ctrlp_working_path_mode='ra'
" Quickfix window.
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0

" MRU.
let g:ctrlp_mruf_max=15
let g:ctrlp_follow_symlinks=1

" Search method.
let g:ctrlp_by_filename=1
let g:ctrlp_regexp=0

"""""""""""""""""""""""""""""""""
" Config ack
"""""""""""""""""""""""""""""""""
noremap <leader>c :Ack!<space>

" Search by ag.
if executable('ag')
    let g:ackprg='ag --vimgrep'
endif

" Hightlight.
let g:ackhighlight=1

" Empty search.
let g:ack_use_cword_for_empty_search=1

"""""""""""""""""""""""""""""""""
" Config syntastic
"""""""""""""""""""""""""""""""""
" Show list of errors and warnings.
noremap <leader>e :Errors<CR>
" Turn to next or previous errors.
noremap <leader>n :lnext<CR>
noremap <leader>p :lprevious<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" check also when just opened the file
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_chechers=['pylint']

"""""""""""""""""""""""""""""""""
" Config UltiSnips
"""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><C-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UntiSnipsListSnippets="<C-e>"

""""""""""""""""""""""""""""""
"  Config vim-expand-region  "
""""""""""""""""""""""""""""""

"""""""""""""""""""""""""
"  Config vim-fugitive  "
"""""""""""""""""""""""""

"""""""""""""""""""
"  Config tagbar  "
"""""""""""""""""""
" Toggle tarbar.
noremap <F4> :TagbarToggle<CR>
" Autofocus on tagbar when opened.
let g:tagbar_autofocus=1

"""""""""""""""""""""
"  Config tasklist  "
"""""""""""""""""""""
" Show tasks list.
noremap <F2> :TaskList<CR>

"""""""""""""""""""
"  Config tabman  "
"""""""""""""""""""
let g:tabman_toggle='<leader>mt'
let g:tabman_focus='<leader>mf'
let g:tabman_width=25
let g:tabman_side='left'
let g:tabman_specials=0
let g:tabman_number=1

"""""""""""""""""""""""""
"  Config vim-markdown  "
"""""""""""""""""""""""""
" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1

"""""""""""""""""""""""
"  Config ConqueTerm  "
"""""""""""""""""""""""
nnoremap <leader>b :ConqueTermSplit bash<CR>
nnoremap <leader>vb :ConqueTermVSplit bash<CR>
