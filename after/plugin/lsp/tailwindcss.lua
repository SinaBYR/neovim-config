vim.lsp.config.tailwindcss = {
	cmd = {'tailwindcss-language-server'},
	filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
	root_markers = { 'tailwind.config.js', 'tailwind.config.ts', 'tailwind.config.cjs', 'postcss.config.js', 'package.json' },
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "classList", "ngClass" },
      experimental = {
        classRegex = {
          { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
          { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
        },
      },
    },
  },
}

