-- note taking
-- https://github.com/epwalsh/obsidian.nvim
-- sync file in remote serverj
--https://github.com/coffebar/transfer.nvim
--https://github.com/GCBallesteros/machinegun.nvim
-- Terminal
--https://github.com/niuiic/remote.nvim   -- edit file from ssh no dependencies
--https://github.com/mikesmithgh/kitty-scrollback.nvim
--https://github.com/dagle/galorehttps://github.com/dagle/galore  mail
--for SSH
--https://github.com/miversen33/netman.nvim
--https://github.com/notifications
-- vim.g.sqlite_clib_path = "C:\\Users\\O_0\\.local\\sqlite\\sqlite3.dll" -- set up sqlite path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "https://github.com/folke/lazy.nvim.git",
                "--branch=stable", -- latest stable release
                lazypath,
        })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({

        --         ╭──────────────────────────────────────────────────────────╮
        --         │                     UI, Ux for NVIM                      │
        --         ╰──────────────────────────────────────────────────────────╯
        --  ╭─────────────────╮
        --  │ Themes | Colors │
        --  ╰─────────────────╯
        { -- Start ify cow
                "mhinz/vim-startify",
                lazy = false,
                init = function()
                        require("Misc.Startify")
                        vim.keymap.set({ "n" }, "<leader>;", "<Cmd>Startify<Cr>", { desc = "spawn cow" })
                end,
        },
        { import = "UI.Colors.Themes" }, -- Rosepine | Aura | oh-lucy | kanagawa | blue-moon | tokyonight
        -- { import = "UI.Colors.HexColorHL" }, --
        --  ╭───────────────────────────────╮
        --  │ Statusline | Tabline | &Lines │
        --  ╰───────────────────────────────╯
        { import = "UI.Lines.Lualine" }, -- normal lualine rose-pine
        -- { import = "UI.Lines.LualineEvil" }, -- Evil-Theme lualine
        -- { import = "UI.Lines.sStatus" }, -- fast Statusline
        -- { import = "UI.Lines.ColorsPick" }, -- pick colors
        -- { import = "UI.Lines.BreadCrumb" }, -- Dropbar
        -- { import = "UI.Lines.InCline" },
        { -- buffer managemenet & tabline
                "pablopunk/unclutter.nvim",
                event = "VeryLazy",
                opts = { hijack_jumplist = false },
        },
        --  ╭────────╮
        --  │ Indent │
        --  ╰────────╯
        { import = "UI.Lines.InDent" }, -- Mini Indentscope
        --  ╭────────────────────────╮
        --  │  Navigation | Movement │
        --  ╰────────────────────────╯
        { import = "UI.Nav.LastPlace" }, -- Get to the last position whereu were
        { import = "UI.Nav.BtrEsc" },    -- Better escape(jk)
        -- { import = "UI.Nav.Houdini" },         -- Houdini , Also Better escape(jk)
        -- { import = "UI.Nav.WildFire" }, -- Increment selection with <cr>
        { import = "UI.Nav.Spider" },          -- change movement w W e E ge
        -- { import = "UI.Nav.Nword" },   --  more versatile n(ext) key  not workign 9iga
        { import = "UI.Nav.Flash" },           -- Flash.floke to (s)earch in in normal mode
        -- { import = "UI.Nav.Ftline" }, -- (F,t,f,T) key better search
        { import = "UI.Nav.SymbolsOutlines" }, -- tree view with lsp symbols
        { import = "UI.Nav.MoveMini" },        --  "<A-k>", "<A-j>", "<A-l", "<A-h"

        {                                      -- middle scroll end of line
                "Aasim-A/scrollEOF.nvim",
                event = "InsertEnter",         -- i did that so i can see what happen without it
                config = function()
                        require("scrollEOF").setup()
                end,
        },

        --         ╭──────────────────────────────────────────────────────────╮
        --         │               Split and Window Managemenet               │
        --         ╰──────────────────────────────────────────────────────────╯
        { import = "UI.Win.SplitPlugin" }, -- Tmux like window managemenet
        { import = "UI.Win.Hydra" },       -- Which like suggestion
        { import = "UI.Win.MultiCursor" }, -- Which like suggestion
        --  ╭──────────────────────────────────────────────────────╮
        --  │ Cmdline | Wilder | Search | Floating help | hlsearch │
        --  ╰──────────────────────────────────────────────────────╯
        { import = "UI.Cmdline.Plugs" },
        --  ╭────────────╮
        --  │ Fold | UFO │
        --  ╰────────────╯
        -- { import = "UI.Fold.UF0" }, -- Ufo not in the sky
        -- { import = "UI.Fold.PrettyFold" }, -- Ui modification | now vim buitin
        -- { import = "UI.Fold.TabFold" }, -- Ui modification
        --         ╭──────────────────────────────────────────────────────────╮
        --         │                          Tools                           │
        --         ╰──────────────────────────────────────────────────────────╯
        { import = "Tools.Visualize.UndoTree" }, -- Visual-ize your undoing
        { import = "Tools.Visualize.Wakatime" }, -- track yourself
        -- { import = "tmp.TEST.DupeKeys" }, -- check for Dupe keys
        --  ╭─────────╮
        --  │  LSP    │
        --  ╰─────────╯
        { import = "Tools.LSP.Faster" },     -- Modern Bigfiles need to work properly first
        -- { import = "Tools.LSP.BiGfile" }, -- Remove all lsp for bigfiles
        { import = "Tools.LSP.TreeShiter" }, -- Treesitter
        { import = "Tools.LSP.Lsp" },        -- lsp.zero , fidget , mason
        { import = "Tools.LSP.LspTimeOut" }, -- save Ram from lsp
        { import = "Tools.LSP.ILLUMINATI" }, -- highlight matches words of currect cursur
        --  ╭──────────────────────────────────╮
        --  │  Completion | Autopair | Tabout  │
        --  ╰──────────────────────────────────╯
        { import = "Tools.Cmp.Cmp_0" }, -- Completion
        -- { import = "Tools.Cmp.Tabout" }, -- TAB-jump
        -- { import = "Tools.Cmp.ePo" }, -- fast auto-Completion register_user_commandlly
        -- { import = "Tools.Cmp.MiniCmp" }, -- din't work
        { import = "Tools.Cmp.Pair" }, -- Brackts, Parent, quotes, Completion, ultimate-autopair.
        --  ╭─────────╮
        --  │ NULL.ls │
        --  ╰─────────╯
        -- { import = "Tools.LSP.NullLs" }, -- set of language server
        -- i droped to configure it because im lazy
        -- { import = "Tools.Visualize.Fundo" }, -- store undo changes for long
        --  ╭───────────╮
        --  │ Formatter │
        --  ╰───────────╯
        { import = "Tools.Formater.conform" }, -- conform a buggy formater
        -- { import = "Tools.Formater.4mater" }, -- Fomatter.nvim
        { import = "Tools.Formater.Align" },   -- Mini Alighn
        { import = "Tools.Formater.Trim" },    -- remove Whitespace

        --  ╭────────────────╮
        --  │  Commenting    │
        --  ╰────────────────╯
        { import = "Tools.Comment.Mini" }, -- mini.cooment
        -- { import = "Tools.Comment.numToStr" }, -- gcc,gcn versitile commentj
        { import = "Tools.Comment.BoxS" }, -- Beautify commenting boxes
        { import = "Tools.Comment.Venn" }, -- Cool Ascii draw
        --  ╭───────────╮
        --  │ Telescope │
        --  ╰───────────╯
        { import = "Tools.Tscope" }, -- Telescope | FUzzy finder
        --  ╭──────────╮
        --  │ WhichKey │
        --  ╰──────────╯
        -- { import = "Tools.WhichKey.WF" }, -- WF | whichkey
        -- { import = "Tools.WhichKey.Clue" },
        -- { import = "Tools.WhichKey.WhichKey" },
        --  ╭───────────────╮
        --  │ SpecialSearch │
        --  ╰───────────────╯
        { import = "Tools.SsrSearch" }, -- TS basesd search | Search and replace
        --  ╭──────────╮
        --  │ Terminal │
        --  ╰──────────╯
        { import = "Misc.Term.Fterm" },        -- numToStr
        { import = "Misc.Term.Kitty_scroll" }, -- term with winbar WIP by you
        -- { import = "Misc.Term.tt" }, -- term with winbar WIP by you
        { import = "Misc.Term.CodeRun" },      -- term with winbar WIP by you
        --  ╭──────╮
        --  │ Misc │
        --  ╰──────╯
        -- { import = "Misc.DataSc.DataViewCSV", }, -- view csv,tsv DATAVIEW
        -- https://github.com/cameron-wags/rainbow_csv.nvim for reainbowed CSV easy view
        --  ╭──────────────────────────╮
        --  │ File manager | Sfm | Oil │
        --  ╰──────────────────────────╯
        { import = "Fm.Sfm" }, -- (Simple) File Manager
        { import = "Fm.Oil" }, -- O(il)
        --  ╭──────────╮
        --  │ Markdown │
        --  ╰──────────╯
        { import = "Tools.Markdown.PreviewMD" }, -- Glow , Markdown-Preview
        -- { import = "Tools.Markdown.ImgPaste" }, -- Pasting image
        { import = "Tools.Markdown.Markdown" },  --
        -- { -- Markdown Keys                     Only wors in Visual mode
        --     "antonk52/markdowny.nvim", -- <c-e> = code block , <c-k> = link , <c-i> = italic , <c-b> = bold ,
        --     ft = { "markdown", "txt", "md" },
        --     config = function()
        --         require("markdowny").setup()
        --     end,
        -- },

        --  ╭─────╮
        --  │ Git │
        --  ╰─────╯
        { import = "Code.Git.Diffview" },
        { import = "Code.Git.GitSigns" },
        { import = "Code.Git.Lazygit" },
        -- { import = "Code.Git.Magit" },

        --  ╭─────────────────────────────────╮
        --  │ Ai | Bard, Gemini | GPT CoPilot │
        --  ╰─────────────────────────────────╯
        -- { import = "Misc.AI.Gemini" }, -- PALM 2 api
        -- { import = "Misc.AI.Codeium" },
        { import = "Misc.AI.Supermaven" },

        --  ╭───────────────────────────────────────╮
        --  │  Registers | Yank,Yanky Paste | GPT   │
        --  ╰───────────────────────────────────────╯
        { import = "Code.Reg.Reg" },      -- " Registers in a window
        { import = "Code.Reg.Ypaste" },   --- ADD highlight to paste 'p' and yank
        { import = "Code.Reg.UndoHIgh" }, -- ADD highlight to Undo `u` key

        {                                 -- NoMove of corsor in '<,>,=' movements
                "gbprod/stay-in-place.nvim",
                event = "BufReadPre",
                config = function()
                        require("stay-in-place").setup({})
                end,
        },

        -- { -- Cursor line
        --     "yamatsum/nvim-cursorline",
        --     event = "BufReadPost",
        --     config = function()
        --         require("nvim-cursorline").setup({
        --             cursorline = { enable = true, timeout = 300, number = true },
        --             cursorword = { enable = false, min_length = 3, hl = { underline = false } },
        --         })
        --     end,
        -- },

        -- Markdown
        -- { 'renerocksai/calendar-vim', -- some calender for wiki
        --   cmd = { "Calendar", "CalendarH", "CalendarT", "CalendarVR", "CalendarSearch", }, },
        --itchyny/calendar.vim
        -- Markdown Tool s'
        -- {
        --         "gaoDean/autolist.nvim", -- 🔥 powerfull autolist,checkbox toggle, full Markdown Weapon
        --         ft = {
        --                 "markdown", --[[ "text",  ]]
        --                 "tex",
        --                 "plaintex",
        --         },
        --         config = function()
        --                 local autolist = require("autolist")
        --                 autolist.setup()
        --                 autolist.create_mapping_hook("i", "<CR>", autolist.new)
        --                 autolist.create_mapping_hook("i", "<Tab>", autolist.indent)
        --                 autolist.create_mapping_hook("i", "<S-Tab>", autolist.indent, "<C-D>")
        --                 autolist.create_mapping_hook("n", "o", autolist.new)
        --                 autolist.create_mapping_hook("n", "O", autolist.new_before)
        --                 autolist.create_mapping_hook("n", ">>", autolist.indent)
        --                 autolist.create_mapping_hook("n", "<<", autolist.indent)
        --                 autolist.create_mapping_hook("n", "<C-r>", autolist.force_recalculate)
        --                 autolist.create_mapping_hook("n", "<leader>x", autolist.invert_entry, "")
        --         end,
        -- },

        --   { -- coool over 28 module for markdonw preview
        -- 'cnshsliu/smp.nvim',
        -- build ="cd lua/server && npm install",   -- yes, we should have node & npm installed.
        -- dependencies = {
        --   "nvim-telescope/telescope.nvim",
        --   "MunifTanjim/nui.nvim",
        --     },
        --     },

        { -- Around Add/change/delete
                "kylechui/nvim-surround",
                -- should look into https://github.com/roobert/surround-ui.nvim
                keys = {
                        { "ys", desc = "󰅪 Add Surround Operator" },
                        { "yS", desc = "󰅪 Surround to EoL" },
                        { "ds", desc = "󰅪 Delete Surround Operator" },
                        { "cs", desc = "󰅪 Change Surround Operator" },
                        { "s", mode = "x", desc = "󰅪 Add Surround Operator" },
                },
                opts = true,
        },

        { -- Highlight parethns
                "utilyre/sentiment.nvim",
                event = "VeryLazy",
                opts = true,
        },

        { -- Contidion switcher
                "nguyenvukhang/nvim-toggler",
                keys = { "<leader>i" },
                event = "BufReadPost",
                config = function()
                        require("nvim-toggler").setup()
                        vim.keymap.set({ "n", "v" }, "<leader>i", require("nvim-toggler").toggle)
                end,
        },

        { -- toggle things
                -- also see ['tandy1229/wordswitch.nvim']
                "nat-418/boole.nvim",
                keys = { "<C-a>" },
                config = function()
                        require("boole").setup({
                                mappings = {
                                        increment = "<C-a>",
                                        decrement = "<C-x>",
                                },
                                allow_caps_additions = {
                                        { "enable", "disable" },
                                },
                        })
                end,
        },
        -- { import = "tmp.TEST.TEST" }, -- TEST
        {
                "atinylittleshell/comment-repl.nvim",
                opts = {},
        },
}, {})
