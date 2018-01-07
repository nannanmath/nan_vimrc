""""""""""""""""""""""""""""""""
" Config vim-colors-solarized
""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""
" Config lightline
"""""""""""""""""""""""""""""""""
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif
set noshowmode

"""""""""""""""""""""""""""""""""
" Config nerdtree
"""""""""""""""""""""""""""""""""
noremap <C-x>n :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\.pyc$', '__pycache__']
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
let MRu_Max_Entries=400
noremap <C-x>f :MRU<CR>

"""""""""""""""""""""""""""""""""
" Config ctrlp
"""""""""""""""""""""""""""""""""
let g:ctrlp_map='<C-p>f' " Search files in current dir.
let g:ctrlp_cmd='CtrlP'
"window Search files in MRU.
nnoremap <C-p>m :CtrlPMRU<CR>
" List files in Buffer.
nnoremap <C-p>b :CtrlPBuffer<CR>
" Ignore files.
let g:ctrlp_custom_ignore={
    \ 'dir': '\v[\/].(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
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
let g:ctrlp_vy_filename=1
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

" Quickfix window.
"let g:ack_qhandler="botright copen 15"
"let g:ack_autoclose=1

" Empty search.
let g:ack_use_cword_for_empty_search=1

