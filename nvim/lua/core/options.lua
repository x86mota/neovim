-- ==================================================
-- Global Options
-- ==================================================

-- Color Support
if vim.fn.has('termguicolors') == 1 then
	vim.cmd('set termguicolors')
end

-- Backup
vim.cmd('set nobackup')
vim.cmd('set noswapfile')
vim.cmd('set undodir=/tmp/undodir')
vim.cmd('set undofile')

-- Buffers
vim.cmd('set confirm')
vim.cmd('set hidden')
vim.cmd('set splitbelow')
vim.cmd('set splitright')

-- Files
vim.cmd('filetype plugin indent on')
vim.cmd('set autoindent')
vim.cmd('set backspace=indent,eol,start')
vim.cmd('set smartindent')
vim.cmd('syntax on')

-- Interface
vim.cmd('set clipboard+=unnamedplus')
vim.cmd('set cursorline')
vim.cmd('set cmdheight=1')
vim.cmd('set encoding=utf-8')
vim.cmd('set fillchars=vert:│,fold:-,eob:\\ ,lastline:@')
vim.cmd('set laststatus=2')
vim.cmd('set listchars=tab:→\\ ,space:·,trail:·,eol:↲')
vim.cmd('set mouse=')
vim.cmd('set noerrorbells')
vim.cmd('set noshowmode')
vim.cmd('set notitle')
vim.cmd('set number')
vim.cmd('set norelativenumber')
vim.cmd('set scrolloff=5')
vim.cmd('set signcolumn=yes')
vim.cmd('set showtabline=2')

-- Search
vim.cmd('set hlsearch')
vim.cmd('set ignorecase')
vim.cmd('set incsearch')
vim.cmd('set path=.,**')
vim.cmd('set smartcase')
vim.cmd('set wildmenu')
vim.cmd('set wildmode=longest,full')
vim.cmd('set wildoptions=pum')
vim.cmd('let @/ = ""')

-- Tab
vim.cmd('set noexpandtab')
vim.cmd('set shiftwidth=4')
vim.cmd('set softtabstop=4')
vim.cmd('set tabstop=4')
