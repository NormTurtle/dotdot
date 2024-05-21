-- Map Ctrl+<CR> to run current file via python
vim.api.nvim_set_keymap("n", "<C-Return>", ":w<CR>:!python %<CR>", { noremap = true })
