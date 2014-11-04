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
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'nsf/gocode', {'rtp': 'vim/'}
NeoBundle 'othree/html5.vim'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-rails'
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
set lazyredraw
set history=50
set clipboard+=unnamed
set backspace=2

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
cnoremap <C-a> <home>
cnoremap <C-e> <end>
noremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap j gj
nnoremap k gk
inoremap jj <esc>
" start and end of line
noremap H ^
nnoremap L $
" Copy
vnoremap <leader>y :w !pbcopy<CR><CR>
" Clean whitespace
map <leader>W  :%s/\s\+$//<CR>:let @/=''<CR>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" switch the recent files
nnoremap <leader><leader> <c-^>
" Gundo
nnoremap <leader>u :GundoToggle<CR>

augroup misc
  autocmd!
  autocmd FileType make,go setlocal noexpandtab
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd FileType vim setlocal foldmethod=marker
  autocmd WinLeave,InsertEnter * set nocursorline
  autocmd WinEnter,InsertLeave * set cursorline
augroup END

" Color {{{
colorscheme github
highlight SpecialKey cterm=none ctermfg=253 ctermbg=none
highlight CursorLine cterm=none ctermfg=none ctermbg=255
" }}}
" Fold {{{
set foldcolumn=2
set foldlevelstart=0

" open/close
nnoremap <Space> za
vnoremap <Space> za
" }}}
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
" Tagbar {{{
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nmap <F8> :TagbarToggle<CR>
" }}}
" Snippet {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"
" }}}
" Git Gutter {{{
let g:gitgutter_eager = 0
" }}}
" Go {{{
let g:go_fmt_command = "goimports"
" }}}
" Markdown {{{
nnoremap <leader>m :silent !open -a 'Marked 2.app' '%:p'<cr>
" }}}

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
" vim:set ft=vim et sw=2:
