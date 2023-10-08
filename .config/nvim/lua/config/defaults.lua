vim.o.ttyfast = true
vim.o.autochdir = true
vim.o.tabstop = 2
vim.o.smarttab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.autoindent = true
vim.o.scrolloff = 4
vim.o.wrap = true
vim.o.compatible = false
vim.cmd[[filetype on]]
vim.cmd[[filetype plugin on]]
vim.cmd[[filetype indent on]]
vim.cmd[[filetype plugin indent on]]
vim.o.encoding = 'utf-8'
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd[[syntax enable]]
vim.o.encoding = 'utf-8'
vim.o.title = true
vim.o.autoindent = true
vim.o.backup = false
vim.o.hlsearch = true
vim.o.showcmd = true
vim.o.cmdheight = 1
vim.o.laststatus = 2
vim.o.scrolloff = 10
vim.o.expandtab = true
vim.o.wildmenu = true
vim.wo.cursorline = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd[[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]
