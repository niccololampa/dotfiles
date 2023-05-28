-- local status, saga = pcall(require, "lspsaga")
-- if (not status) then return end

-- saga.setup{
--   server_filetype_map = {
--     typescript = 'typescript'
--   }
-- }

-- local opts = { noremap = true, silent = true }
-- vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
-- vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
-- vim.keymap.set('n', 'gs', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
-- vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
-- vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)


local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  },
  symbol_in_winbar = {
    enable = false
  }
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-u>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
-- TO make this work
vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('i', '<C->', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
-- TODO: make work
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

-- code action
-- TODO: make it work
-- vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
