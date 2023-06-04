require('plugins')
require('maps')
require('highlights')
require('base')


-- hide cursorline when in another buffer
vim.cmd([[
augroup CursorLine
    autocmd!
    autocmd VimEnter * setlocal cursorline
    autocmd WinEnter * setlocal cursorline
    autocmd BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END
]])
