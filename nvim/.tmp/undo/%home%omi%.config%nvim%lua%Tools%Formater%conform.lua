Vim�UnDo� ���*U�(�^���Z�&;q���L�B�U0��   .                                                    e�Q    _�                    
       ����                                                                                                                                                                                                                                                                                                                                                             e�Q    �   
      )                          �         )    �   
      (    5��    
                      :                     �    
                 
   N              �       5�_�                        	    ����                                                                                                                                                                                                                                                                                                                                                             e�Q    �      ,             { -- 4Matter | Formatter            "stevearc/conform.nvim",           event = "BufWritePre",           config = function()   &            require("conform").setup({   $                formatters_by_ft = {   E                    go = { "goimports_reviser", "gofmt", "golines" },   '                    lua = { "stylua" },                          python = {              -- To fix lint errors.             "ruff_fix",   '          -- To run the Ruff formatter.             "ruff_format",�         .      *                    html = { "prettier" },   0                    javascript = { "prettier" },   )                    css = { "prettier" },   )                    yaml = { "yamlfix" },   -                    -- json = { "prettier" },                   },       %                format_after_save = {   (                    lsp_fallback = true,                   },                       formatters = {   )                    goimports_reviser = {   6                        command = "goimports-reviser",   D                        args = { "-output", "stdout", "$FILENAME" },                       },                   },               })       4            -- Override stylua's default indent type   T            table.insert(require("conform.formatters.stylua").args, "--indent-type")   M            table.insert(require("conform.formatters.stylua").args, "Spaces")       9            -- -- Override prettier's default indent type   W            -- table.insert(require("conform.formatters.prettier").args, "--tab-width")   M            -- table.insert(require("conform.formatters.prettier").args, "4")           end,       },   }5��                          �      !              �                (             �      �      5�_�                     
       ����                                                                                                                                                                                                                                                                                                                                                             e�Q      �   
      (                          �         )    �   
      )      !                    p  python = {              -- To fix lint errors.             "ruff_fix",   '          -- To run the Ruff formatter.             "ruff_format",   
        },5��    
                      :                     �    
                     N                     �    
                     P                     �    
                     O                     �    
                 
   O              �       5��