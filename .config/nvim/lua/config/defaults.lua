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
vim.o.foldmethod = 'indent'

vim.loader.enable(true) 

vim.cmd[[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]

function run()
    vim.cmd("w")

    local filetype = vim.bo.filetype -- get current filetype

    if filetype == 'c' then
        vim.cmd("belowright split | resize -5 | terminal gcc % -o %< && time ./%<")
    elseif filetype == 'sh' then
        vim.cmd("terminal bash %")
    elseif filetype == 'python' then
        vim.cmd("belowright split | terminal python3 %")
    elseif filetype == 'markdown' then
        -- Requires InstantMarkdownPreview plugin or similar
        vim.cmd("MarkdownPreview")
    elseif filetype == 'js' or filetype == 'javascript' then
        vim.cmd("belowright split | terminal node %")
    elseif filetype == 'tex' then
        -- Requires vimtex plugin
        vim.cmd("VimtexView")
    end
end

vim.g.vimtex_quickfix_ignore_filters = {
  'Fandol', 
}

function TexFocusVim()
  -- Replace `TERMINAL` with the name of your terminal application
  -- Example: os.execute("open -a iTerm")
  -- Example: os.execute("open -a Alacritty")
  os.execute("open -a TERMINAL")
end

vim.cmd([[
augroup vimtex_event_focus
  au!
  au User VimtexEventViewReverse call s:TexFocusVim()
augroup END
]])
