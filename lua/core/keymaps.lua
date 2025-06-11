-- [[ Basic Keymaps ]]
--  See `:help map()`

local map = function(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map('n', '<leader>e', vim.cmd.Oil)
map('n', '<leader>nh', ':nohlsearch<CR>', { desc = 'Clear search highlight' })
-- Diagnostic keymaps
map('n', '<leader><Esc>', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- XX Added Custom
map('i', 'jk', '<Esc>', { noremap = true })
map('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
map('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
map('n', '<leader>f', vim.lsp.buf.format)
map('n', '<leader><leader>', function()
  vim.cmd 'so'
end)
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
