require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "c", "query", "lua", "comment" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = false,
    additional_vim_regex_highlighting = false,
  }
}
