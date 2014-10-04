if !1 | finish | endif
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

syntax enable
set number
set numberwidth=5

set nobackup
set nowritebackup
set noswapfile

set splitbelow
set splitright
