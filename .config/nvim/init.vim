if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" set script encoding
scriptencoding utf-8 " stop loading config if it's on tiny or small
set nocompatible
set number
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


" ==================== maps =============================================
noremap ; :
noremap H 7h
noremap J 5j
noremap K 5k
noremap L l
map S :w<CR>
map Q :q<CR>
map <LEADER>sc :set spell!<CR>
map tt :NERDTreeToggle<CR>



if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif


call plug#begin('$HOME/.config/nvim/plugged')

" Git and Github functionality
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'


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
Plug 'preservim/nerdtree'

call plug#end()

colorscheme nord
