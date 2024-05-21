-- local opts = {
--    -- javascript = {
--    --  { "clear" }, -- each table is a separate commands
--    --  { "node", "[#file]" },
--    -- },
--   --  cpp = {
--   --   { "clear" }, -- 3 commands are ran.
--   --   -- ctrl-p/n can be used to cycle history.
--   --   { "make", { "[#ask]", "Enter make argument" } },
--   --   { { "[#ask]", "Command to run after make" } },
--   --  },
--   -- },
--   split = "horizontal", -- vertical or horizontal
--   scale = 0.25,
--   },

return {
        "catgoose/coderunner.nvim",
        opts = {
                langs = {
                        python = {
                                { "python3", "[#file]" },
                        },

                },
                split = "horizontal", -- vertical or horizontal
                scale = 0.25,

        },
        -- event = "BufReadPre",
        cmd = { "Coderunner", "CoderunnerHorizontal", "CoderunnerVertical" },
        -- keys = {
        --         { "<leader>cc", [[require("coderunner").run({split = "horizontal"})]],
        --                 { "<leader>cv", [[require("coderunner").run({split = "vertical"})]] },
        --         }
        -- }
}
