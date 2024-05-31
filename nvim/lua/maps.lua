-- vim.keymap.set(mode, lhs, rhs)
-- Normal mode mapping for Vim command
-- vim.keymap.set('n', '<Leader>ex1', '<cmd>echo "Example 1"<cr>')

-- general mappings
vim.keymap.set({'n'}, '<C-q>', ':tabclose <Return>')
vim.keymap.set({'n'}, '<C-w>n', ':tab split <Return>')

vim.keymap.set({'n'}, '<C-p>', ':FZF <Return>')

-- terminal
vim.keymap.set({'t'}, '<Esc>', '<C-\\><C-n>')
-- :tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

-- traverse errors
vim.keymap.set({'n'}, '[q', ':cnext <Return>')
vim.keymap.set({'n'}, ']q', ':cprev <Return>')

-- TODO: unify quickfix, syntastic, spell...


-- tests
vim.keymap.set({'n'}, '<leader>t', ':TestNearest<CR>', {silent=true})
