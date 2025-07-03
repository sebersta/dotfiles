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

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("lazy").setup({
	"arcticicestudio/nord-vim", -- colorscheme
	"tpope/vim-commentary", --gc toggle comments
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  }, -- button bar
  {
    'github/copilot.vim',
    event = "InsertEnter",
  },
	-- "mhinz/vim-startify", 
	"tpope/vim-surround", --cs replace surrounding characters
	"theniceboy/antovim", --gs switch from true to false
	"reedes/vim-wordy", -- check for 
  -- 'preservim/nerdtree', --tt
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --   ft = { "markdown" },
  --   build = function() vim.fn["mkdp#util#install"]() end,
  -- },
  -- {
  --   "kiyoon/jupynium.nvim",
  --   build = "pip3 install --user .",
  --   ft = { "python" },
  --   -- build = "conda run --no-capture-output -n jupynium pip install .",
  --   -- enabled = vim.fn.isdirectory(vim.fn.expand "~/miniconda3/envs/jupynium"),
  -- },
  "rcarriga/nvim-notify",
  -- "stevearc/dressing.nvim",
  'lambdalisue/suda.vim', -- sudo write files
  'junegunn/goyo.vim', -- zen mode
  'airblade/vim-gitgutter', -- A Vim plugin which shows a git diff in the sign column. 
  {
  "lervag/vimtex",
  -- ft = { "tex" },
  init = function()
    vim.g.vimtex_view_method = 'skim'
    -- vim.g.vimtex_compiler_progname = 'nvr'
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_skim_activate = 1
    vim.g.vimtex_quickfix_open_on_warning = false
    vim.g.vimtex_compiler_latexmk_engines = { ["_"] = "-lualatex" }
  end
},
  "ap/vim-css-color", -- colorize css colors
  -- 'madox2/vim-ai', -- You can generate code, edit text, or have an interactive conversation with GPT models, all powered by OpenAI's API.

  -- snippits
  {
  'sirver/ultisnips',
  init = function()
    vim.g.UltiSnipsExpandTrigger = '<tab>'
    vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
    vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    vim.g.UltiSnipsSnippetDirectories = {"~/.config/nvim/ultisnips/"}
  end
},
  'dstein64/vim-startuptime',
-- {
--   'KeitaNakamura/tex-conceal.vim',
--   ft = { 'tex', 'latex' },
--   config = function()
--     vim.o.conceallevel = 1
--     vim.g.tex_conceal = 'abdmg'
--     vim.cmd("hi Conceal ctermbg=none")
--   end,
-- }

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

