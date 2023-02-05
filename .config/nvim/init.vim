if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
set encoding=utf-8
set number
set relativenumber
syntax enable
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set wildmenu
set cursorline
set ignorecase
set smartcase
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap ; :
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map tt :NvimTreeToggle<CR>
map <C-p> :Telescope find_files<CR>

let mapleader=" "
map <LEADER>sc :set spell!<CR>
map <LEADER>. :Goyo<CR>
map <LEADER>h <c-w>h
map <LEADER>j <c-w>j
map <LEADER>k <c-w>k
map <LEADER>l <c-w>l

call plug#begin('$HOME/.config/nvim/plugged')

Plug 'nvim-tree/nvim-tree.lua'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'github/copilot.vim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
Plug 'pearofducks/ansible-vim'
Plug 'theniceboy/antovim' " gs to switch
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-wordy'

call plug#end()

colorscheme nord

if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif

  let s:distro = system("lsb_release -is")
  if s:distro == "Ubuntu\n" || s:distro == "Debian\n"
    runtime ./debian.vim
  endif
endif
