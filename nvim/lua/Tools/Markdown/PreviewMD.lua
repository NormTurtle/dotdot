--  ╭──────────────────────────────────────────────────────────╮
--  │ Preview Markdown                                         │
--  ╰──────────────────────────────────────────────────────────╯
M = {

        { -- Previewr
                {
                        "ellisonleao/glow.nvim",
                        opts = {
                                -- border = "shadow", -- floating window border config
                                -- width = 140,
                                -- height = 80,
                                -- width_ratio = 0.9, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
                                -- height_ratio = 0.9,
                        },
                        cmd = "Glow",
                },
                {
                        "iamcco/markdown-preview.nvim",
                        cmd = { "MarkdownPreviewToggle", "MarkdownPreview" },
                        ft = { "markdown" },
                        build = function()
                                vim.fn["mkdp#util#install"]()
                        end,
                },

                -- {
                --         "MeanderingProgrammer/markdown.nvim",
                --         name = "render-markdown",                                                            -- Only needed if you have another plugin named markdown.nvim
                --         dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
                -- },
        },
}
return M
