-- return {
--   cmd = { 'gopls', '--background-index' },
--   root_markers = { 'compile_commands.json', 'compile_flags.txt' },
--   filetypes = { 'c', 'cpp' },
-- }
--

-- require('go').setup()
--
-- local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
-- 		-- local ok, goformat = pcall(require, 'go.format')
-- 		-- if ok and goformat then
-- 		-- 	goformat.goimports()
-- 		-- end
--   end,
--   group = format_sync_grp,
-- })
--

vim.lsp.config.gopls = {
  cmd = {'gopls'},
  filetypes = {'go'},
  -- root_markers = {'.luarc.json', '.luarc.jsonc'},
}

