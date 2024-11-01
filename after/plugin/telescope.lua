local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>files', builtin.git_files, {})

vim.keymap.set('n', '<leader>grep', function()
    builtin.grep_string({ search = vim.fn.input("grep >> ")})
end)
