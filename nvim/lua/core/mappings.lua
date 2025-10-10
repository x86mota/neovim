-- ==================================================
-- Global Mappings
-- ==================================================

-- Set Leader Key
vim.g.mapleader = ' '

-- For Conciseness
local key = vim.keymap

local opts = {
	noremap = true,
	silent = true
}

-- Buffer
key.set('n', '<Tab>', ':bnext<CR>', opts, {	desc = 'Switch to the next buffer'})
key.set('n', '<S-Tab>', ':bprevious<CR>', opts, { desc = 'Switch to the previous buffer' })
key.set('n', '<leader>dd', ':bdelete<CR>', opts, { desc = 'Delete current buffer' })
