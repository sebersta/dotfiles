if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Git and Github functionality
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'vim-airline/vim-airline'
  " Status bar
  Plug 'hoob3rt/lualine.nvim'

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'

  " Fast search and fzf
  Plug 'nvim-telescope/telescope.nvim'

  " Indentation guides
  Plug 'lukas-reineke/indent-blankline.nvim'



endif

Plug 'mhinz/vim-startify'

" Git diffs
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
Plug 'pearofducks/ansible-vim'
Plug 'theniceboy/antovim' " gs to switch
Plug 'junegunn/goyo.vim'
call plug#end()
