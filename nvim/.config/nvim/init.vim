autocmd!
" set script encoding
scriptencoding utf-8 " stop loading config if it's on tiny or small
if !1 | finish | endif
set nocompatible
set number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set wildmenu
set shell=zsh

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
colorscheme nord
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif


runtime ./maps.vim
"}}}
