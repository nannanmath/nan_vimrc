# Introduction

This is my vimrc. It is constantly eloving.

## Installation

git clone --recursive https://github.com/nannanmath/nan_vimrc.git ~/.nan_vimrc
    cd .nan_vimrc
./install

## Key Mappings

The `leader` is `,`.

### Plugin related mappings

[NERD Tree](https://github.com/scrooloose/nerdtree) mappings:

    noremap <F3> :NERDTreeToggle<CR>
    inoremap <F3> <ESC>:NERDTreeToggle<CR>

[bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) mappings:

    noremap <C-x>b :BufExplorer<CR>
    inoremap <C-x>b <ESC>:BufExplorer<CR>

[MRU](http://www.vim.org/scripts/script.php?script_id=521) Mappings:

    noremap <C-x>m :MRU<CR>
    inoremap <C-x>m <ESC>:MRU<CR>

[CtrlP](https://github.com/kien/ctrlp.vim) mappings:
    
    let g:ctrlp_map='<C-x>f'
    let g:ctrlp_cmd='CtrlP'
    nnoremap <leader>sm :CtrlPMRU<CR>
    nnoremap <leader>sb :CtrlPBuffer<CR>

[Ack](https://github.com/mileszs/ack.vim) mappings:

    noremap <C-x>a :Ack!<space>
    inoremap <C-x>a <ESC>:Ack!<space>

ss



    
