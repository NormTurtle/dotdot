M = {

        { -- 4Matter | Formatter
                "stevearc/conform.nvim",
                event = "BufWritePre",
                config = function()
                        require("conform").setup({
                                formatters_by_ft = {
                                        go = { "goimports_reviser", "gofmt", "golines" },
                                        lua = { "stylua" },
                                        python = {
                                                -- To fix lint errors.
                                                "ruff_fix",
                                                -- To run the Ruff formatter.
                                                "ruff_format",
                                        },
                                        html = { "prettier" },
                                        javascript = { "prettier" },
                                        css = { "prettier" },
                                        yaml = { "yamlfix" },
                                        -- json = { "prettier" },
                                },

                                format_after_save = {
                                        lsp_fallback = true,
                                },

                                formatters = {
                                        goimports_reviser = {
                                                command = "goimports-reviser",
                                                args = { "-output", "stdout", "$FILENAME" },
                                        },
                                },
                        })

                        -- Override stylua's default indent type
                        table.insert(require("conform.formatters.stylua").args, "--indent-type")
                        table.insert(require("conform.formatters.stylua").args, "Spaces")

                        -- -- Override prettier's default indent type
                        -- table.insert(require("conform.formatters.prettier").args, "--tab-width")
                        -- table.insert(require("conform.formatters.prettier").args, "4")
                end,
        },
}
return M
