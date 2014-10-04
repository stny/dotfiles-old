if !1 | finish | endif
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'croaky/vim-colors-github'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

syntax enable
set number
set numberwidth=5
set laststatus=2
set ruler
set cursorline
set showcmd
set incsearch
set autoread
set autowrite
set diffopt+=vertical

set nobackup
set nowritebackup
set noswapfile

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

let mapleader=","

augroup misc
  autocmd!
  autocmd FileType make,go setlocal noexpandtab
augroup END

colorscheme github
highlight SpecialKey cterm=none ctermfg=253 ctermbg=none
highlight CursorLine cterm=none ctermfg=none ctermbg=255
