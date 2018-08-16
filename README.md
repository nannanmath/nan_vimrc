# Introduction

This is my vimrc. It is constantly eloving.

## Installation

git clone --recursive https://github.com/nannanmath/nan_vimrc.git ~/.nan_vimrc
    cd .nan_vimrc
./install

## Key Mappings

The `leader` is `,`.

### Plugin related mappings

* [vim-maximizer][]
```viml
let g:maximizer_default_mapping_key = '<F4>'
```

* [obvious-resize][]
```viml
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>
```

* [vim-windowswap][]
```viml
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
```

* [NERD Tree][]
```viml
noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <ESC>:NERDTreeToggle<CR>
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
```

* [NERD Commenter][]
|       Action       |        Command        |
|--------------------|-----------------------|
|    `<leader>cc`    |     NERDComComment    |
| `<leader>c<space>` |  NERDComToggleComment |

* [CtrlP][]
```viml
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
noremap <Leader>r :CtrlPMRUFiles<CR>
noremap <Leader>b :CtrlPBuffer<CR>
```

* [CtrlP-funky][]
```viml
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
```

* [vim-buffergator][]
| Action  |                 Command                |
|---------|----------------------------------------|
| `<C-V>` |  open a window listing all buffers     |
| `<C-V>` |  open buffer in a new vertical split   |
| `<C-S>` |  open buffer in a new horizental split |
| `<C-T>` |  open buffer in a new tab              |

* [vim-bufkill][]
```viml
map <C-c> :BD<cr>
```

* [gundo][]
```viml
nnoremap <F5> :GundoToggle<CR>
```

* [YankRing][]
| Action  |            Command           |
|---------|------------------------------|
|  `F11`  |  Display YankRing's contents |
| `<C-P>` |  Previous item               |
| `<C-N>` |  Next item                   |

* [UltiSnips][]
| Action  |            Command           |
|---------|------------------------------|
| `<C-q>` |  Snips expand                |
| `<C-f>` |  Jump forward                |
| `<C-b>` |  Jump backward               |

* [tabular][]
```viml
noremap <Leader>a= :Tabularize /=<CR>
noremap <Leader>a: :Tabularize /:\zs<CR>
noremap <Leader>a| :Tabularize /|<CR>
```

* [vim-expand-region][]
```viml
vnoremap K <Plug>(expand_region_expand)
vnoremap J <Plug>(expand_region_shrink
```

* [vim-bookmarks][]
```viml
nmap <Leader><Leader> <Plug>BookmarkToggle
nmap <Leader>i <Plug>BookmarkAnnotate
nmap <Leader>a <Plug>BookmarkShowAll
nmap <Leader>j <Plug>BookmarkNext
nmap <Leader>k <Plug>BookmarkPrev
nmap <Leader>c <Plug>BookmarkClear
nmap <Leader>x <Plug>BookmarkClearAll
nmap <Leader>kk <Plug>BookmarkMoveUp
nmap <Leader>jj <Plug>BookmarkMoveDown
nmap <Leader>g <Plug>BookmarkMoveToLine
```

* [tabman][]
```viml
let g:tabman_toggle = '<F3>'
let g:tabman_focus  = '<leader>tf'
```

* [ConqueTerm][]
```viml
nnoremap <F7> :ConqueTermSplit bash<CR>
```

* [vim-workspace][]
```viml
nnoremap <leader>s :ToggleWorkspace<CR>
```


  [vim-maximizer]: https://github.com/szw/vim-maximizer
  [obvious-resize]: https://github.com/talek/obvious-resize
  [vim-windowswap]: https://github.com/wesq3/vim-windowswap
  [NERD Tree]: https://github.com/scrooloose/nerdtree
  [NERD Commenter]: https://github.com/scrooloose/nerdcommenter
  [CtrlP]: https://github.com/kien/ctrlp.vim
  [CtrlP-funky]: https://github.com/tacahiroy/ctrlp-funky
  [vim-buffergator]: https://github.com/jeetsukumaran/vim-buffergator
  [vim-bufkill]: https://github.com/qpkorr/vim-bufkill
  [gundo]: https://github.com/sjl/gundo.vim
  [YankRing]: https://github.com/vim-scripts/YankRing.vim
  [UltiSnips]: https://github.com/sirver/ultisnips
  [tabular]: https://github.com/godlygeek/tabular
  [vim-expand-region]: https://github.com/terryma/vim-expand-region
  [vim-bookmarks]: https://github.com/mattesgroeger/vim-bookmarks
  [tabman]: https://github.com/kien/tabman.vim
  [ConqueTerm]: https://github.com/rosenfeld/conque-term
  [vim-workspace]: https://github.com/thaerkh/vim-workspace