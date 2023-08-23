vim.cmd("autocmd!")
vim.wo.number         = true -- code line number
vim.wo.relativenumber = true -- relative code line numbering
vim.opt.title         = true -- set title of terminal to currently open file
vim.opt.showcmd       = true
vim.opt.wildmenu      = true
vim.opt.showmatch     = true               --show matching [] , (), {} when hovered
vim.opt.incsearch     = true               --instant search execution while you enter string
vim.opt.hlsearch      = true               --turns on search highlighting
vim.opt.expandtab     = true               --To insert space characters whenever the tab key is pressed
vim.opt.shiftwidth    = 2                  --number of space char for indetation
vim.opt.softtabstop   = 2                  --turn Tab into a space automatically. tab is inconsistent with editors.
vim.opt.tabstop       = 2                  --number of space characters that will be inserted when tab.
vim.opt.smarttab      = true               --a <Tab> in front of a line inserts blanks based to 'shiftwidth'.'tabstop' or 'softtabstop' is used in other places
vim.opt.ruler         = true               --show the cursor position
vim.opt.backspace     =
'indent,eol,start'                         --overwrites backspace default (if any)  for vim deleting indentation, line breaks, pre-existing characters"
vim.opt.splitbelow    = true               --always below when splitting vertically
vim.opt.splitright    = true               --always right when splitting horizontally
vim.opt.clipboard:append { 'unnamedplus' } -- for copying to clipboard
vim.opt.ignorecase = true                  -- Case insensitive searching UNLESS /C or capital in search
-- vim.opt.autoread = true                    -- reolad file if there are changes elsewhere

-- copying crafzdog config ------------------------------------
vim.opt.backup = false -- to remove backup swap
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2       --alwasy show the status bar
vim.opt.scrolloff = 10       -- center cursor when scrolling
vim.opt.inccommand = 'split' --allows to see realtime results of :s / and ?
vim.opt.breakindent = true   --wrapped lines have the same indent as original line
-- vim.opt.wrap = false         -- No Wrap lines

-- Undercurl contorols the apperance in visual mode
-- vim.cmd([[let &t_Cs = "\e[4:3m"]])
-- vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
-- vim.opt.formatoptions:append { 'r' }
