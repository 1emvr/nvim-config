vim.g.mapleader = " "
-- escape characters
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "jk", "<ESC>")
-- window splitting
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- Split vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- Split horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- Equal width windows
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split
vim.keymap.set("n", "<leader>sz", ":MaximizerToggle<CR>") -- Zoom into split
-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>o", ":NvimTreeOpen<CR>")
