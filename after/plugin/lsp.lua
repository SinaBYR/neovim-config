local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
	'gopls'
})

cmp.setup({
	experimental = {ghost_text = true},
  mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
  }),
})

require("neodev").setup({}) -- autocomplete for neovim api functions

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

