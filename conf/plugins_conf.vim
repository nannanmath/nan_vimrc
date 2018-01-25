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
noremap <M-3> :NERDTreeToggle<CR>
inoremap <M-3> <ESC>:NERDTreeToggle<CR>
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeWinPos="left"
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
noremap <C-x><C-b> :BufExplorer<CR>
inoremap <C-x><C-b> <ESC>:BufExplorer<CR>

"""""""""""""""""""""""""""""""""
" Config mru.vim
"""""""""""""""""""""""""""""""""
let MRU_Max_Entries=400
noremap <C-x><C-m> :MRU<CR>
inoremap <C-x><C-m> <ESC>:MRU<CR>

"""""""""""""""""""""""""""""""""
" Config Unite.vim
"""""""""""""""""""""""""""""""""
noremap <C-x><C-f> :Unite -start-insert file<CR>
inoremap <C-x><C-f> <C-o>:Unite -start-insert file<CR>

"""""""""""""""""""""""""""""""""
" Config ack
"""""""""""""""""""""""""""""""""
noremap <C-x><C-a> :Ack!<space>
inoremap <C-x><C-a> <C-o>:Ack!<space>

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
noremap <M-4> :TagbarToggle<CR>
" Autofocus on tagbar when opened.
let g:tagbar_autofocus=1

"""""""""""""""""""""
"  Config tasklist  "
"""""""""""""""""""""
" Show tasks list.
noremap <M-2> :TaskList<CR>

"""""""""""""""""""
"  Config tabman  "
"""""""""""""""""""
let g:tabman_toggle='<M-5>'
let g:tabman_width=25
let g:tabman_side='left'
let g:tabman_specials=0
let g:tabman_number=1

"""""""""""""""""""""""""
"  Config vim-markdown & vim-instant-markdown  "
"""""""""""""""""""""""""
" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1
" vim-instant-markdown will not automatically launch the preview window.
let g:instant_markdown_autostart=0
" Server listens to network. Default port is 8090.
let g:instant_markdown_open_to_the_world=1

"""""""""""""""""""""""
"  Config ConqueTerm  "
"""""""""""""""""""""""
nnoremap <C-x><C-t> :ConqueTermSplit bash<CR>
inoremap <C-x><C-t> <ESC>:ConqueTermSplit bash<CR>
