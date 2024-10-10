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

-- subs
vim.keymap.set({'n'}, '<leader><Space>', ':SubPlay<cr>')
vim.keymap.set({'n'}, '<leader>s', ':SubPlay keep-going<cr>')


-- nmap <silent> <leader>t :TestNearest --debug-jvm<CR> "port 5005
-- nmap <silent> <leader>t :TestNearest IT_WS=1 <CR> "bifrost
-- nmap <silent> <leader>t :TestNearest<CR>
-- nmap <silent> <leader>C :TestClass<CR>
-- nmap <silent> <leader>T :TestFile<CR>
-- nmap <silent> <leader>a :TestSuite<CR>
-- nmap <silent> <leader>l :TestLast<CR>
-- nmap <silent> <leader>g :TestVisit<CR>
