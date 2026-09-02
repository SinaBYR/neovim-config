vim.lsp.config.tls = {
  cmd = {'typescript-language-server', '--stdio'},
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	root_dir = vim.fs.dirname(vim.fs.find({'tsconfig.json', 'package.json'}, { upward = true })[1]),
	settings = {
    codeAction = {
      disableRuleComment = {
        enable = true,
        location = "separateLine",
      },
      showDocumentation = {
        enable = false, -- <-- this, doesn't apply
      },
    },
    codeActionOnSave = {
      enable = false, -- <-- this either
      mode = "all",
    },
    format = false,
    quiet = true,
    run = "onSave",
  },
  flags = {
    allow_incremental_sync = false,
    debounce_text_changes = 1000,
  },
}
