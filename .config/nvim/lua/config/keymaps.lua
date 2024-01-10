-- map leader to space
vim.g.maplocalleader = " "
vim.g.mapleader = " "

local mappings = {
    { 'n', ';', ':' },
    { 'n', 'H', '5h' },
    { 'n', 'J', '5j' },
    { 'n', 'K', '7k' },
    { 'n', 'L', '7l' },
    { '', 'S', ':w<CR>' },
    { '', 'Q', ':q<CR>' },
    { '', 'R', ':so $MYVIMRC<CR>' },
    { '', 'tt', ':NERDTreeToggle<CR>' },
    { '', '<C-p>', ':Telescope find_files<CR>' },
    { '', '<LEADER>sc', ':set spell!<CR>' },
    { '', '<LEADER>.', ':Goyo<CR>' },
    { '', '<LEADER>h', '<c-w>h' },
    { '', '<LEADER>j', '<c-w>j' },
    { '', '<LEADER>k', '<c-w>k' },
    { '', '<LEADER>l', '<c-w>l' },
    { 'n', 'sl', ':set splitright<CR>:vsplit | Startify<CR>' },
    { 'n', 'sh', ':set nosplitright<CR>:vsplit | Startify<CR>' },
    { 'n', 'sj', ':set nosplitbelow<CR>:split | Startify<CR>' },
    { 'n', 'sk', ':set splitbelow<CR>:split | Startify<CR>' },
    { 'n', 'r',  ':lua run()<CR>'}
}

for _, map in pairs(mappings) do
    vim.api.nvim_set_keymap(map[1], map[2], map[3], { noremap = true, silent = true })
end


