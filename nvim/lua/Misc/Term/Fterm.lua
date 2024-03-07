-- Example keybindings
-- vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
-- vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

M = {
        "numToStr/FTerm.nvim",
        keys = {

                { "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>',            mode = { "n" } },
                { "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', mode = { "t" } },
        },
        -- keys = {
        --     { "gc", mode = { "n", "v" }, desc = "Comment motion wise or gcc for line" },
        --     { "gb", mode = { "n", "v" }, desc = "commnet block wise" },
        --     { "gcO", mode = { "n", "v" }, desc = "commnet above line" },
        --     { "gco", mode = { "n", "v" }, desc = "commnet below line" },
        --     { "gcA", mode = { "n", "v" }, desc = "commnet at the end of line" },
        -- },
        opts = {
                border = "single",
                dimensions = {
                        height = 0.4,
                        width = 0.6,
                },
                cmd = "fish",
                auto_close = true,
                -- blend = 22,
        },
}
return M
