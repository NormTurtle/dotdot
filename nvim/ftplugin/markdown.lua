-- vim.cmd([[
--
-- setlocal textwidth=120
-- setlocal autoindent
--
--
-- ]])
-- Map Ctrl+<CR> to render-markdown
vim.api.nvim_set_keymap("n", "<C-Return>", "<CMD>RenderMarkdownToggle<CR>", { noremap = true })
