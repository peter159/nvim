-- use space as a the leader key
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('c', '<C-g>', '<ESC>', {noremap = true, silent = false})
map('n', '<C-a>', '<ESC>^', {noremap = true, silent = false})
map('i', '<C-a>', '<ESC>I', {noremap = true, silent = false})
map('n', '<C-e>', '<ESC>$', {noremap = true, silent = false})
map('i', '<C-e>', '<ESC>A', {noremap = true, silent = false})
map('i', '<M-f>', '<ESC><Space>Wi', {noremap = true, silent = false})
map('i', '<M-b>', '<ESC>Bi', {noremap = true, silent = false})
map('i', '<M-d>', '<ESC>cW', {noremap = true, silent = false})
map('i', '<C-d>', '<delete>', {noremap = true, silent = false})
map('i', '<C-k>', '<C-o>C', {noremap = true, silent = false})
map('i', '<C-f>', '<ESC>la', {noremap = true, silent = false})
map('i', '<C-b>', '<ESC>ha', {noremap = true, silent = false})
map('i', '<C-n>', '<ESC>ja', {noremap = true, silent = false})
map('i', '<C-p>', '<ESC>ki', {noremap = true, silent = false})

map('i', 'fd', '<ESC>', {noremap = true, silent = false})
map('i', ' ', '<Space>', {noremap = true, silent = false})
map('i', '<leader>fs', ':w<ESC>', {noremap = true, silent = false})
