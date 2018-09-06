"""""""""""""""""""""""""""""""
" Config molokai & lightline
"""""""""""""""""""""""""""""""""
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif
syntax enable
set background=dark
colorscheme solarized
"let g:molokai_original=1
"let g:rehash256=1
let g:solarized_termcolors=256
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#statusline'
    \ },
    \ }
set noshowmode

" Highlight the 80th column for length limitation.
set colorcolumn=80
highlight colorcolumn ctermbg=DarkRed

"""""""""""""""""""""""""""""""""
" Config vim-move
"""""""""""""""""""""""""""""""""
let g:move_map_keys = 0
vmap J <Plug>MoveBlockDown
vmap K <Plug>MoveBlockUp
nmap J <Plug>MoveLineDown
nmap K <Plug>MoveLineUp
"let g:move_key_modifier = 'M'


"""""""""""""""""""""""""""""""""
" Config incsearch
"""""""""""""""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

"""""""""""""""""""""""""""""""""
" Config vim-maximizer
"""""""""""""""""""""""""""""""""
let g:maximizer_default_mapping_key = '<F4>'

"""""""""""""""""""""""""""""""""
" Config obvious-resize
"""""""""""""""""""""""""""""""""
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>

"""""""""""""""""""""""""""""""""
" Config vim-rooter
"""""""""""""""""""""""""""""""""
let g:rooter_change_directory_for_non_project_files = 'current'

"""""""""""""""""""""""""""""""""
" Config nerdtree
"""""""""""""""""""""""""""""""""
noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <ESC>:NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeWinPos="left"
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__']
let g:NERDTreeWinSize=35
let g:NERDTreeDirArrowExpandable='>'
let g:NERDTreeDirArrowCollapsible='v'

"""""""""""""""""""""""""""""""""
" Config nerdcommenter
"""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"""""""""""""""""""""""""""""""""
" Config ctrlp & ctrlp-funky
"""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 15
let g:ctrlp_by_filename = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
"noremap <Leader>r :CtrlPMRUFiles<CR>
" Add a plugin vim-Buffergator
"noremap <Leader>b :CtrlPBuffer<CR> 

"""""""""""""""""""""""""""""""""
" Config vim-bufferfator
"""""""""""""""""""""""""""""""""
let g:buffergator_suppress_keymaps = 1
nnoremap <silent> <Leader>b :BuffergatorToggle<CR>

"""""""""""""""""""""""""""""""""
" Config Undotree
"""""""""""""""""""""""""""""""""
nnoremap <F7> :UndotreeToggle<CR>

"""""""""""""""""""""""""""""""""
" Config YankRing
"""""""""""""""""""""""""""""""""
nnoremap <silent> <F6> :YRShow<CR>

"""""""""""""""""""""""""""""""""
" Config UltiSnips
"""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsEditSplit="vertical"
"let g:UntiSnipsListSnippets="<C-e>"

"""""""""""""""""""""""""
" Config vim-bookmarks
"""""""""""""""""""""""""
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_highlight_lines  = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

" Finds the Git super-project directory.
function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.git')
        " Current work dir is git's work tree
        let location = getcwd().'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', '.;')
    endif
    if len(location) > 0
        return location.'/.'.filename
    else
        return getcwd().'/.'.filename
    endif
endfunction

" Avoid keybinding conflicts with the Nerdtree.
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()

"""""""""""""""""""""""""
" Config indentLine
"""""""""""""""""""""""""
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceEnabled = 1

"""""""""""""""""""
" Config tabman
"""""""""""""""""""
let g:tabman_toggle = '<F3>'
let g:tabman_focus  = '<leader>tf'
let g:tabman_width=25
let g:tabman_side='left'
let g:tabman_specials=0
let g:tabman_number=0

"""""""""""""""""""""""
" Config python-mode
"""""""""""""""""""""""
"let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint_bind = '<leader>k'
let g:pymode_doc_bind = 'T'
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 1

"""""""""""""""""""
" Config YCM
""""""""""""""""""""
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.nan_vimrc/conf/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_server_python_interpreter = ''
nnoremap <leader>j :YcmCompleter GoTo<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"


"""""""""""""""""""""""
" Config ConqueTerm
"""""""""""""""""""""""
nnoremap <F12> :ConqueTermSplit bash<CR>

"""""""""""""""""""""""
" Config xolox/vim-session
"""""""""""""""""""""""
let g:session_autoload = 'no'
nnoremap <leader>ss :SaveSession 
nnoremap <leader>so :OpenSession 

"""""""""""""""""""""""
" Config Tabular
"""""""""""""""""""""""
noremap <C-l> :Tabularize /

"""""""""""""""""""""""
" Config fugitive
"""""""""""""""""""""""
autocmd BufReadPost fugitive://* set bufhidden=delete



