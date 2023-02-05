if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" set script encoding
scriptencoding utf-8 " stop loading config if it's on tiny or small
set nocompatible
set number
set relativenumber
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
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

noremap ; :
noremap H 7h
noremap J 5j
noremap K 5k
noremap L 5l
map S :w<CR>
map Q :q<CR>
map tt :NvimTreeToggle<CR>

let mapleader=" "
map <LEADER>sc :set spell!<CR>
map <LEADER>. :Goyo<CR>
map <LEADER>h <c-w>h
map <LEADER>j <c-w>j
map <LEADER>k <c-w>k
map <LEADER>l <c-w>l


call plug#begin('$HOME/.config/nvim/plugged')

Plug 'nvim-tree/nvim-tree.lua'


" Git and Github functionality
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'github/copilot.vim'

" Status bar
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" Fast search and fzf
Plug 'nvim-telescope/telescope.nvim'

" Indentation guides
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'mhinz/vim-startify'

" Git diffs
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
Plug 'pearofducks/ansible-vim'

Plug 'theniceboy/antovim' " gs to switch
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-wordy'

call plug#end()

colorscheme nord

lua require'nvim-tree'.setup {}
lua require'lualine'.setup {}

if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
