Vim�UnDo� ��B�����șo�$'�A�d��L���xR�U                                      e2í    _�                              ����                                                                                                                                                                                                                                                                                                                            R                      V        e2ì    �              R   -- Mason   -- Setup language servers.   require("mason").setup()   "require("mason-lspconfig").setup()       H-- After setting up mason-lspconfig you may set up servers via lspconfig   $-- require'lspconfig'.lua_ls.setup {   --   settings = {   --     Lua = {   --       runtime = {   s--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)   --         version = 'LuaJIT',   --       },   --       diagnostics = {   C--         -- Get the language server to recognize the `vim` global   --         globals = {'vim'},   --       },   --       workspace = {   ;--         -- Make the server aware of Neovim runtime files   =--         library = vim.api.nvim_get_runtime_file("", true),   --       },   T--       -- Do not send telemetry data containing a randomized but unique identifier   --       telemetry = {   --         enable = false,   --       },   	--     },   --   },   -- }   --   )-- local lspconfig = require('lspconfig')   -- lspconfig.lua_ls.setup {   --   settings = {   --     Lua = {   --       workspace = {   --         library = {   /--           ["${3rd}/luassert/library"] = true   --         },   --       },   --       diagnostics = {   --         globals = {'vim'},   --       },   --     }   --   }   -- }       -- Global mappings.   O-- See `:help vim.diagnostic.*` for documentation on any of the below functions   Avim.keymap.set('n', '<localleader>ge', vim.diagnostic.open_float)   3vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)   3vim.keymap.set('n', ']d', vim.diagnostic.goto_next)   ;vim.keymap.set('n', '<space>gl', vim.diagnostic.setloclist)       >-- -- Use LspAttach autocommand to only map the following keys   >-- -- after the language server attaches to the current buffer   --- vim.api.nvim_create_autocmd('LspAttach', {   >--   group = vim.api.nvim_create_augroup('UserLspConfig', {}),   --   callback = function(ev)   3--     -- Enable completion triggered by <c-x><c-o>   9--     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'   --    --     -- Buffer local mappings.   O--     -- See `:help vim.lsp.*` for documentation on any of the below functions   '--     local opts = { buffer = ev.buf }   ?--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)   >--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)   8--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)   B--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)   I--     vim.keymap.set('n', '<space>gk', vim.lsp.buf.signature_help, opts)   O--     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)   R--     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)   2--     vim.keymap.set('n', '<space>wl', function()   A--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))   --     end, opts)   I--     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)   A--     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)   U--     vim.keymap.set({ 'n', 'v' }, '<localleader>ca', vim.lsp.buf.code_action, opts)   >--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)   7--     vim.keymap.set('n', '<localleader>f', function()   ,--       vim.lsp.buf.format { async = true }   --     end, opts)   	--   end,   -- })5��            R                      !             5��