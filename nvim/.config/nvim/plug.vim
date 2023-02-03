if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

" Autoinstall plugin manager
let s:data_dir     = Stdpath('data')
let g:plug_home    = s:data_dir . '/plugged'
let s:autoload_dir = s:data_dir . '/site/autoload'
let s:plugvim_file = s:autoload_dir . '/plug.vim'
if empty(glob(s:plugvim_file))
  call  mkdir(s:autoload_dir, 'p')
  let s:plugurl= 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  execute 'silent !curl -fsLo '.s:plugvim_file.' '.s:plugurl
    \ .' ||        wget -q -O '.s:plugvim_file.' '.s:plugurl
endif
" Install missing plugins
let g:plugs={}
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugUpdate --sync | source $MYVIMRC
  \| endif


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
