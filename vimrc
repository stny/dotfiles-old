" Bundles {{{
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
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'google/vim-ft-go'
NeoBundle 'fatih/vim-go'
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
call neobundle#end()
filetype plugin indent on
NeoBundleCheck
" }}}

syntax enable
set encoding=utf-8
set number
set numberwidth=5
set laststatus=2
set modeline
set modelines=5
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

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

noremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let g:go_fmt_command = "goimports"

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
" vim:set ft=vim et sw=2:
