-- General key maps
vim.keymap.set('', '<C-n>', '<cmd>Neotree toggle<CR>')

vim.keymap.set('', '<C-t>', '<cmd>ToggleTerm direction=float<CR>')
vim.keymap.set('t', '<esc>', [[<C-\><C-n><cmd>ToggleTerm<CR>]])

-- Key mappings
vim.keymap.set('', '<C-p>', ':Telescope find_files theme=dropdown previewer=false<CR>')
vim.keymap.set('', '<C-b>', ':Telescope buffers theme=dropdown previewer=false<CR>')

