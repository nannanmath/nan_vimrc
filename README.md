# Introduction

nan-vim is a private vim configuration which is welcome to be used by others.
It's tested on [MobaXterm][] for SSH to remote Linux host.

## Installation

```bash
git clone --recursive https://github.com/nannanmath/nan_vimrc.git ~/.nan_vimrc
cd .nan_vimrc
./install
```

## Key Mappings

The `<leader>` is `,`.

### Configurations for Plugins

You can customize these mappings as you like.

* [vim-maximizer][]
```viml
let g:maximizer_default_mapping_key = '<F4>'
```

* [obvious-resize][]
```viml
noremap <silent> <C-Up>    : <C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down>  : <C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left>  : <C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> : <C-U>ObviousResizeRight<CR>
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

| Action               | Command                 |
| -------------------- | ----------------------- |
| `<leader>cc`         | NERDComComment          |
| `<leader>c<space>`   | NERDComToggleComment    |

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

| Action      | Command                                  |
| ---------   | ---------------------------------------- |
| `<Leader>b` | open a window listing all buffers        |
| `<C-V>`     | open buffer in a new vertical split      |
| `<C-S>`     | open buffer in a new horizental split    |
| `<C-T>`     | open buffer in a new tab                 |

* [vim-bufkill][]
```viml
map <C-c> :BD<cr>
```

* [Undotree][]
```viml
nnoremap <F5> :UndotreeToggle<CR>
```

* [YankRing][]

| Action    | Command                        |
| --------- | ------------------------------ |
| `F6`      | Display YankRing's contents    |
| `<C-P>`   | Previous item                  |
| `<C-N>`   | Next item                      |

* [UltiSnips][]

| Action    | Command                        |
| --------- | ------------------------------ |
| `<C-q>`   | Snips expand                   |
| `<C-f>`   | Jump forward                   |
| `<C-b>`   | Jump backward                  |

* [tabular][]

| Action    | Command            |
| --------- | --------           |
| `<C-a>`   | Input for aligning |

* [vim-expand-region][]

| Action    | Command       |
| --------- | --------      |
| `+`       | Expand region |
| `_`       | Shrink region |

* [vim-bookmarks][]
```viml
nmap mm :BookmarkToggle<CR>
nmap mi :BookmarkAnnotate<CR>
nmap mn :BookmarkNext<CR>
nmap mp :BookmarkPrev<CR>
nmap ma :BookmarkShowAll<CR>
nmap mc :BookmarkClear<CR>
nmap mx :BookmarkClearAll<CR>
nmap mkk :BookmarkMoveUp
nmap mjj :BookmarkMoveDown
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

  [MobaXterm]: https://mobaxterm.mobatek.net
  [vim-maximizer]: https://github.com/szw/vim-maximizer
  [obvious-resize]: https://github.com/talek/obvious-resize
  [vim-windowswap]: https://github.com/wesq3/vim-windowswap
  [NERD Tree]: https://github.com/scrooloose/nerdtree
  [NERD Commenter]: https://github.com/scrooloose/nerdcommenter
  [CtrlP]: https://github.com/kien/ctrlp.vim
  [CtrlP-funky]: https://github.com/tacahiroy/ctrlp-funky
  [vim-buffergator]: https://github.com/jeetsukumaran/vim-buffergator
  [vim-bufkill]: https://github.com/qpkorr/vim-bufkill
  [undotree]: https://github.com/mbbill/undotree
  [YankRing]: https://github.com/vim-scripts/YankRing.vim
  [UltiSnips]: https://github.com/sirver/ultisnips
  [tabular]: https://github.com/godlygeek/tabular
  [vim-expand-region]: https://github.com/terryma/vim-expand-region
  [vim-bookmarks]: https://github.com/mattesgroeger/vim-bookmarks
  [tabman]: https://github.com/kien/tabman.vim
  [ConqueTerm]: https://github.com/rosenfeld/conque-term
  [vim-workspace]: https://github.com/thaerkh/vim-workspace
