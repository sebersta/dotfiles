local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"arcticicestudio/nord-vim",
	"tpope/vim-commentary", --gc
	"hoob3rt/lualine.nvim",
	"github/copilot.vim",
	"mhinz/vim-startify",
	"tpope/vim-surround",
	"theniceboy/antovim", --gs
	"reedes/vim-wordy",
  'preservim/nerdtree', --tt
  'ryanoasis/vim-devicons',
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',
	})
  
vim.cmd('colorscheme nord')
vim.g.nord_cursor_line_number_background = 1
vim.g.nord_uniform_status_lines = 1
vim.g.nord_bold_vertical_split_line = 1

local status, lualine = pcall(require, "lualine")
if (not status) then return end
lualine.setup {
  options = {
    theme = 'nord',
    icons_enabled = true,
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {
      { 'diagnostics', sources = {"coc"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
      'encoding',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fugitive'}

}

