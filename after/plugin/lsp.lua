local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
	'gopls'
})

require("neodev").setup({}) -- autocomplete for neovim api functions

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
