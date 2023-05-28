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
-- go to next error
vim.keymap.set('n', '<C-u>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
--see error for line in dropdown
vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
-- for more information on variable. Will see in dropdown
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
-- can easily see definition of variable and the file defining the variable
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
-- can easily see refeferences ofvariable
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- for help on signature for example parameters of functions
-- vim.keymap.set('i', '<C->', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- fast way to replace all text in the document.
vim.keymap.set('n', 'gR', '<Cmd>Lspsaga rename<CR>', opts)

-- code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")



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
