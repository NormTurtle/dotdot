return {
    {
        "tadmccorkle/markdown.nvim",
        ft = "markdown", -- or 'event = "VeryLazy"'
        opts = {
            on_attach = function(bufnr)
                local function toggle(key)
                    return "<Esc>gv<Cmd>lua require'markdown.inline'" .. ".toggle_emphasis_visual'" .. key .. "'<CR>"
                end

                vim.keymap.set("x", "<C-b>", toggle("b"), { buffer = bufnr })
                vim.keymap.set("x", "<C-i>", toggle("i"), { buffer = bufnr })
            end,
        },
    },
}
