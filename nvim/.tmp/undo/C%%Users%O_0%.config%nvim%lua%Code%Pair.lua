Vim�UnDo� ��|6�<"a1�}��9��q)�r�yP�                                      e1��    _�                             ����                                                                                                                                                                                                                                                                                                                                                V       e1��    �                $	-- { -- skip to add right arrow TAB   	-- 	"abecodes/tabout.nvim",   	-- 	event = "InsertEnter",   	-- 	dependencies = {   (	-- 		"nvim-treesitter/nvim-treesitter",   	-- 	},   	-- 	config = function()   !	-- 		require("tabout").setup({})   U	-- 		vim.api.nvim_set_keymap("i", "<A-x>", "<Plug>(TaboutMulti)", { silent = true })   Y	-- 		vim.api.nvim_set_keymap("i", "<A-z>", "<Plug>(TaboutBackMulti)", { silent = true })   		-- 	end,   	-- 	-- config = true,   	-- },5��                                �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       e1��    �               )	{ -- Brackts, Parent, quotes, Completion   #		"altermo/ultimate-autopair.nvim",   		branch = "v0.6",   		event = {   )			"InsertEnter",--[[  "CmdlineEnter"  ]]   		},   		keys = { ":" },   		config = function()   )			require("ultimate-autopair").setup({})   		end,   	},    5��                  
             �       :      5��