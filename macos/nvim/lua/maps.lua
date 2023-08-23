local keymap = vim.keymap
keymap.set('n', '<CR>', 'O<ESC>')
keymap.set('n', '<S-CR>', 'o<ESC>')

-- for copying the path
keymap.set('n', ',cs', [[:let @+=vim.fn.expand("%")<CR>]], { silent = true, noremap = true })
keymap.set('n', ',cl', [[:let @+=vim.fn.expand("%:p")<CR>]], { silent = true, noremap = true })
