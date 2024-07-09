vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- SHIFT + J/K to move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-PageUp>", "<C-u>zz")
vim.keymap.set("n", "<C-PageDown>", "<C-d>zz")

vim.keymap.set("x", "p", "\"_dp")

-- <leader>y to copy to system clipboard
-- y to copy to nvim clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- edit the word I'm currently on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<A-l>", "20zl")
vim.keymap.set("n", "<A-h>", "20zh")

