VimUnDoå Î~IÊ!âoóSêÇØú¿n	Fÿ%¢¨  <   6	{ import = "UI.Nav.BtrEsc" },    -- Better escape(jk)   B                           g
ÃY    _Ð                     Ê       ÿÿÿÿ                                                                                                                                                                                                                                                                                                                                                             g
Âm    õ   É   Ë  <      *        { import = "Misc.AI.Supermaven" },5õ    É                     /      +       .       5_Ð                    Ê       ÿÿÿÿ                                                                                                                                                                                                                                                                                                                                                             g
Ân    õ        <              vim.fn.system({                   "git",                   "clone",   %                "--filter=blob:none",   9                "https://github.com/folke/lazy.nvim.git",   ;                "--branch=stable", -- latest stable release                   lazypath,   
        })õ      K  <   /   Ç        --         â­âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ®   S        --         â                     UI, Ux for NVIM                      â   Ç        --         â°âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ¯   E        --  â­ââââââââââââââââââ®   #        --  â Themes | Colors â   E        --  â°ââââââââââââââââââ¯           { -- Start ify cow   %                "mhinz/vim-startify",                   lazy = false,   !                init = function()   0                        require("Misc.Startify")   i                        vim.keymap.set({ "n" }, "<leader>;", "<Cmd>Startify<Cr>", { desc = "spawn cow" })                   end,   
        },   i        { import = "UI.Colors.Themes" }, -- Rosepine | Aura | oh-lucy | kanagawa | blue-moon | tokyonight   2        -- { import = "UI.Colors.HexColorHL" }, --   o        --  â­ââââââââââââââââââââââââââââââââ®   1        --  â Statusline | Tabline | &Lines â   o        --  â°ââââââââââââââââââââââââââââââââ¯   D        { import = "UI.Lines.Lualine" }, -- normal lualine rose-pine   E        -- { import = "UI.Lines.LualineEvil" }, -- Evil-Theme lualine   >        -- { import = "UI.Lines.sStatus" }, -- fast Statusline   =        -- { import = "UI.Lines.ColorsPick" }, -- pick colors   9        -- { import = "UI.Lines.BreadCrumb" }, -- Dropbar   +        -- { import = "UI.Lines.InCline" },   )        { -- buffer managemenet & tabline   +                "pablopunk/unclutter.nvim",   #                event = "VeryLazy",   3                opts = { hijack_jumplist = false },   
        },   *        --  â­âââââââââ®           --  â Indent â   *        --  â°âââââââââ¯   ;        { import = "UI.Lines.InDent" }, -- Mini Indentscope   Z        --  â­âââââââââââââââââââââââââ®   *        --  â  Navigation | Movement â   Z        --  â°âââââââââââââââââââââââââ¯   P        { import = "UI.Nav.LastPlace" }, -- Get to the last position whereu were   =        { import = "UI.Nav.BtrEsc" },    -- Better escape(jk)   U        -- { import = "UI.Nav.Houdini" },         -- Houdini , Also Better escape(jk)   K        -- { import = "UI.Nav.WildFire" }, -- Increment selection with <cr>   L        { import = "UI.Nav.Spider" },          -- change movement w W e E ge   Y        -- { import = "UI.Nav.Nword" },   --  more versatile n(ext) key  not workign 9iga   [        { import = "UI.Nav.Flash" },           -- Flash.floke to (s)earch in in normal mode   G        -- { import = "UI.Nav.Ftline" }, -- (F,t,f,T) key better search   L        { import = "UI.Nav.SymbolsOutlines" }, -- tree view with lsp symbols   S        { import = "UI.Nav.MoveMini" },        --  "<A-k>", "<A-j>", "<A-l", "<A-h"õ   K   S  <      K        {                                      -- middle scroll end of line   )                "Aasim-A/scrollEOF.nvim",   `                event = "InsertEnter",         -- i did that so i can see what happen without it   #                config = function()   4                        require("scrollEOF").setup()                   end,   
        },õ   S     <   4   Ç        --         â­âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ®   S        --         â               Split and Window Managemenet               â   Ç        --         â°âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ¯   J        { import = "UI.Win.SplitPlugin" }, -- Tmux like window managemenet   C        { import = "UI.Win.Hydra" },       -- Which like suggestion   C        { import = "UI.Win.MultiCursor" }, -- Which like suggestion   ´        --  â­âââââââââââââââââââââââââââââââââââââââââââââââââââââââ®   H        --  â Cmdline | Wilder | Search | Floating help | hlsearch â   ´        --  â°âââââââââââââââââââââââââââââââââââââââââââââââââââââââ¯   (        { import = "UI.Cmdline.Plugs" },   6        --  â­âââââââââââââ®           --  â Fold | UFO â   6        --  â°âââââââââââââ¯   <        -- { import = "UI.Fold.UF0" }, -- Ufo not in the sky   Q        -- { import = "UI.Fold.PrettyFold" }, -- Ui modification | now vim buitin   =        -- { import = "UI.Fold.TabFold" }, -- Ui modification   Ç        --         â­âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ®   S        --         â                          Tools                           â   Ç        --         â°âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ¯   K        { import = "Tools.Visualize.UndoTree" }, -- Visual-ize your undoing   B        { import = "Tools.Visualize.Wakatime" }, -- track yourself   C        -- { import = "tmp.TEST.DupeKeys" }, -- check for Dupe keys   -        --  â­ââââââââââ®           --  â  LSP    â   -        --  â°ââââââââââ¯   [        { import = "Tools.LSP.Faster" },     -- Modern Bigfiles need to work properly first   K        -- { import = "Tools.LSP.BiGfile" }, -- Remove all lsp for bigfiles   :        { import = "Tools.LSP.TreeShiter" }, -- Treesitter   I        { import = "Tools.LSP.Lsp" },        -- lsp.zero , fidget , mason   A        { import = "Tools.LSP.LspTimeOut" }, -- save Ram from lsp   Y        { import = "Tools.LSP.ILLUMINATI" }, -- highlight matches words of currect cursur   x        --  â­âââââââââââââââââââââââââââââââââââ®   4        --  â  Completion | Autopair | Tabout  â   x        --  â°âââââââââââââââââââââââââââââââââââ¯   5        { import = "Tools.Cmp.Cmp_0" }, -- Completion   7        -- { import = "Tools.Cmp.Tabout" }, -- TAB-jump   Y        -- { import = "Tools.Cmp.ePo" }, -- fast auto-Completion register_user_commandlly   :        -- { import = "Tools.Cmp.MiniCmp" }, -- din't work   a        { import = "Tools.Cmp.Pair" }, -- Brackts, Parent, quotes, Completion, ultimate-autopair.   -        --  â­ââââââââââ®           --  â NULL.ls â   -        --  â°ââââââââââ¯   E        -- { import = "Tools.LSP.NullLs" }, -- set of language server   3        -- i droped to configure it because im lazy   O        -- { import = "Tools.Visualize.Fundo" }, -- store undo changes for long   3        --  â­ââââââââââââ®           --  â Formatter â   3        --  â°ââââââââââââ¯   J        { import = "Tools.Formater.conform" }, -- conform a buggy formater   A        -- { import = "Tools.Formater.4mater" }, -- Fomatter.nvim   =        { import = "Tools.Formater.Align" },   -- Mini Alighn   C        { import = "Tools.Formater.Trim" },    -- remove Whitespaceõ      ¼  <   3   B        --  â­âââââââââââââââââ®   "        --  â  Commenting    â   B        --  â°âââââââââââââââââ¯   :        { import = "Tools.Comment.Mini" }, -- mini.cooment   O        -- { import = "Tools.Comment.numToStr" }, -- gcc,gcn versitile commentj   G        { import = "Tools.Comment.BoxS" }, -- Beautify commenting boxes   =        { import = "Tools.Comment.Venn" }, -- Cool Ascii draw   3        --  â­ââââââââââââ®           --  â Telescope â   3        --  â°ââââââââââââ¯   @        { import = "Tools.Tscope" }, -- Telescope | FUzzy finder   0        --  â­âââââââââââ®           --  â WhichKey â   0        --  â°âââââââââââ¯   =        -- { import = "Tools.WhichKey.WF" }, -- WF | whichkey   .        -- { import = "Tools.WhichKey.Clue" },   2        -- { import = "Tools.WhichKey.WhichKey" },   ?        --  â­ââââââââââââââââ®   !        --  â SpecialSearch â   ?        --  â°ââââââââââââââââ¯   P        { import = "Tools.SsrSearch" }, -- TS basesd search | Search and replace   0        --  â­âââââââââââ®           --  â Terminal â   0        --  â°âââââââââââ¯   :        { import = "Misc.Term.Fterm" },        -- numToStr   M        { import = "Misc.Term.Kitty_scroll" }, -- term with winbar WIP by you   F        -- { import = "Misc.Term.tt" }, -- term with winbar WIP by you   M        { import = "Misc.Term.CodeRun" },      -- term with winbar WIP by you   $        --  â­âââââââ®           --  â Misc â   $        --  â°âââââââ¯   L        -- { import = "Misc.DataSc.DataViewCSV", }, -- view csv,tsv DATAVIEW   X        -- https://github.com/cameron-wags/rainbow_csv.nvim for reainbowed CSV easy view   `        --  â­âââââââââââââââââââââââââââ®   ,        --  â File manager | Sfm | Oil â   `        --  â°âââââââââââââââââââââââââââ¯   7        { import = "Fm.Sfm" }, -- (Simple) File Manager   '        { import = "Fm.Oil" }, -- O(il)   0        --  â­âââââââââââ®           --  â Markdown â   0        --  â°âââââââââââ¯   K        { import = "Tools.Markdown.PreviewMD" }, -- Glow , Markdown-Preview   C        -- { import = "Tools.Markdown.ImgPaste" }, -- Pasting image   3        { import = "Tools.Markdown.Markdown" },  --   J        -- { -- Markdown Keys                     Only wors in Visual mode   p        --     "antonk52/markdowny.nvim", -- <c-e> = code block , <c-k> = link , <c-i> = italic , <c-b> = bold ,   0        --     ft = { "markdown", "txt", "md" },   "        --     config = function()   /        --         require("markdowny").setup()           --     end,           -- },õ   ¼   Ä  <      !        --  â­ââââââ®           --  â Git â   !        --  â°ââââââ¯   )        { import = "Code.Git.Diffview" },   )        { import = "Code.Git.GitSigns" },   (        { import = "Code.Git.Lazygit" },   )        -- { import = "Code.Git.Magit" },õ   Ä   Ë  <      u        --  â­ââââââââââââââââââââââââââââââââââ®   3        --  â Ai | Bard, Gemini | GPT CoPilot â   u        --  â°ââââââââââââââââââââââââââââââââââ¯   7        -- { import = "Misc.AI.Gemini" }, -- PALM 2 api   *        -- { import = "Misc.AI.Codeium" },   -        -- { import = "Misc.AI.Supermaven" },õ   Ë   Ò  <              --  â­ââââââââââââââââââââââââââââââââââââââââ®   9        --  â  Registers | Yank,Yanky Paste | GPT   â           --  â°ââââââââââââââââââââââââââââââââââââââââ¯   D        { import = "Code.Reg.Reg" },      -- " Registers in a window   Q        { import = "Code.Reg.Ypaste" },   --- ADD highlight to paste 'p' and yank   J        { import = "Code.Reg.UndoHIgh" }, -- ADD highlight to Undo `u` keyõ   Ò   Ú  <      R        {                                 -- NoMove of corsor in '<,>,=' movements   ,                "gbprod/stay-in-place.nvim",   %                event = "BufReadPre",   #                config = function()   :                        require("stay-in-place").setup({})                   end,   
        },õ   Ú   å  <   
           -- { -- Cursor line   *        --     "yamatsum/nvim-cursorline",   %        --     event = "BufReadPost",   "        --     config = function()   5        --         require("nvim-cursorline").setup({   T        --             cursorline = { enable = true, timeout = 300, number = true },   c        --             cursorword = { enable = false, min_length = 3, hl = { underline = false } },           --         })           --     end,           -- },õ   å     <              -- Markdown   B        -- { 'renerocksai/calendar-vim', -- some calender for wiki   `        --   cmd = { "Calendar", "CalendarH", "CalendarT", "CalendarVR", "CalendarSearch", }, },           --itchyny/calendar.vim           -- Markdown Tool s'           -- {   l        --         "gaoDean/autolist.nvim", -- ð¥ powerfull autolist,checkbox toggle, full Markdown Weapon           --         ft = {   7        --                 "markdown", --[[ "text",  ]]   !        --                 "tex",   &        --                 "plaintex",           --         },   &        --         config = function()   ?        --                 local autolist = require("autolist")   +        --                 autolist.setup()   R        --                 autolist.create_mapping_hook("i", "<CR>", autolist.new)   V        --                 autolist.create_mapping_hook("i", "<Tab>", autolist.indent)   a        --                 autolist.create_mapping_hook("i", "<S-Tab>", autolist.indent, "<C-D>")   O        --                 autolist.create_mapping_hook("n", "o", autolist.new)   V        --                 autolist.create_mapping_hook("n", "O", autolist.new_before)   S        --                 autolist.create_mapping_hook("n", ">>", autolist.indent)   S        --                 autolist.create_mapping_hook("n", "<<", autolist.indent)   a        --                 autolist.create_mapping_hook("n", "<C-r>", autolist.force_recalculate)   d        --                 autolist.create_mapping_hook("n", "<leader>x", autolist.invert_entry, "")           --         end,           -- },õ     	  <      ;        --   { -- coool over 28 module for markdonw preview           -- 'cnshsliu/smp.nvim',   `        -- build ="cd lua/server && npm install",   -- yes, we should have node & npm installed.           -- dependencies = {   -        --   "nvim-telescope/telescope.nvim",   $        --   "MunifTanjim/nui.nvim",           --     },           --     },õ  	    <      %        { -- Around Add/change/delete   )                "kylechui/nvim-surround",   O                -- should look into https://github.com/roobert/surround-ui.nvim                   keys = {   F                        { "ys", desc = "ó°ª Add Surround Operator" },   @                        { "yS", desc = "ó°ª Surround to EoL" },   I                        { "ds", desc = "ó°ª Delete Surround Operator" },   I                        { "cs", desc = "ó°ª Change Surround Operator" },   Q                        { "s", mode = "x", desc = "ó°ª Add Surround Operator" },                   },                   opts = true,   
        },õ      <              { -- Highlight parethns   )                "utilyre/sentiment.nvim",   #                event = "VeryLazy",                   opts = true,   
        },õ    &  <   	           { -- Contidion switcher   -                "nguyenvukhang/nvim-toggler",   '                keys = { "<leader>i" },   &                event = "BufReadPost",   #                config = function()   7                        require("nvim-toggler").setup()   a                        vim.keymap.set({ "n", "v" }, "<leader>i", require("nvim-toggler").toggle)                   end,   
        },õ  &  <  <              { -- toggle things   9                -- also see ['tandy1229/wordswitch.nvim']   %                "nat-418/boole.nvim",   #                keys = { "<C-a>" },   #                config = function()   0                        require("boole").setup({   ,                                mappings = {   <                                        increment = "<C-a>",   <                                        decrement = "<C-x>",   "                                },   8                                allow_caps_additions = {   @                                        { "enable", "disable" },   "                                },                           })                   end,   
        },   0        -- { import = "tmp.TEST.TEST" }, -- TEST   	        {   5                "atinylittleshell/comment-repl.nvim",                   opts = {},   
        },5õ    &                  @      *      ¢      õ                      ?      x      ú       õ                      }>             [       õ    	                  <      _      ¢      õ                       É:      F            õ    å                   Ï4      ó      =      õ    Ú       	      	      3      ±      k      õ    Ò                   ñ1      "      Ç       õ    Ë                   Ä/      é      ¿      õ    Ä                   .            a      õ    ¼                   -      á       °       õ           2      2      à!      '      Â	      õ    S       3      3                         õ    K                   F      M      ò       õ           .      .      ô            o
      õ                       °            ¤       5_Ð                     Í   %    ÿÿÿÿ                                                                                                                                                                                                                                                                                                                                                             g
ÃX    õ   A   C  <      6	{ import = "UI.Nav.BtrEsc" },    -- Better escape(jk)õ   D   F  <      E	{ import = "UI.Nav.Spider" },          -- change movement w W e E geõ   F   H  <      T	{ import = "UI.Nav.Flash" },           -- Flash.floke to (s)earch in in normal modeõ   I   K  <      L	{ import = "UI.Nav.MoveMini" },        --  "<A-k>", "<A-j>", "<A-l", "<A-h"õ   K   M  <      D	{                                      -- middle scroll end of lineõ   M   O  <      R		event = "InsertEnter",         -- i did that so i can see what happen without itõ   W   Y  <      <	{ import = "UI.Win.Hydra" },       -- Which like suggestionõ   l   n  <      T	{ import = "Tools.LSP.Faster" },     -- Modern Bigfiles need to work properly firstõ   o   q  <      B	{ import = "Tools.LSP.Lsp" },        -- lsp.zero , fidget , masonõ        <      6	{ import = "Tools.Formater.Align" },   -- Mini Alighn   <	{ import = "Tools.Formater.Trim" },    -- remove Whitespaceõ       ¢  <      3	{ import = "Misc.Term.Fterm" },        -- numToStrõ   £   ¥  <      F	{ import = "Misc.Term.CodeRun" },      -- term with winbar WIP by youõ   ³   µ  <      ,	{ import = "Tools.Markdown.Markdown" },  --õ   Î   Ñ  <      =	{ import = "Code.Reg.Reg" },      -- " Registers in a window   J	{ import = "Code.Reg.Ypaste" },   --- ADD highlight to paste 'p' and yankõ   Ò   Ô  <      K	{                                 -- NoMove of corsor in '<,>,=' movements5õ    Ò                     d,                     õ    Î         "          +      B       ;       õ    ³   )                  ´&                     õ    £   #                  i#                     õ        !                  ¬"                     õ       &      '      $   Ò      8       3       õ    o                                          õ    l   "                  Ó                     õ    W                     u                     õ    M                     É                     õ    K   !                  o                     õ    I   !                  !                     õ    F   !                  E                     õ    D   !                  ¬                     õ    A                     ß                     5çª