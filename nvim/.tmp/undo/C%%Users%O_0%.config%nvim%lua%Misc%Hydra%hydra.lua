Vim�UnDo� an�%�
��W7�R���ƍta�n%]<
���   6           -                       d�~    _�                     2       ����                                                                                                                                                                                                                                                                                                                                                             d�-     �   2            5��    2                      �	                     �    2                      �	                     �    2                     
                     5�_�                    3       ����                                                                                                                                                                                                                                                                                                                                                             d�.     �   3            5��    3                      
                     5�_�                    4       ����                                                                                                                                                                                                                                                                                                                                                             d�1     �   ?              8    { "p", "<Plug>(YankyPutAfter)", { desc = "After" } }�   @            �   5                                    �   6            �   3                                    --5��    3                     $
                     �    3                      
                     �    3                     
                     �    4   
                  
                     �    4           
           
      
               �    4                  
   
                     �    5           
          
      
              �    5              
   8   &
              �       �    ?   8           '                     �      5�_�                    6       ����                                                                                                                                                                                                                                                                                                                                                             d�:     �   5   7          4                      local Hydra = require("hydra")5�5�_�                    5        ����                                                                                                                                                                                                                                                                                                                                                             d�<     �   4   6           5�5�_�                    6   -    ����                                                                                                                                                                                                                                                                                                                                         	       v   	    d�Q    �   5   7   g      4                      local Hydra = require("hydra")5��    5                     �	      5       8       5�_�         	          6       ����                                                                                                                                                                                                                                                                                                                                                             d�d    �   5   7   g      7                      -- local Hydra = require("hydra")5��    5                     �	      8       5       5�_�                   6   -    ����                                                                                                                                                                                                                                                                                                                                                             d�k     �   6   8          4                      local Hydra = require("hydra")�   5   6   h      4                      local Hydra = require("hydra")�   7   9   g    5��   5              6       �	      5       �	      5�_�                    7        ����                                                                                                                                                                                                                                                                                                                            7          g          V       d�}    �   6   7       1   4                      local Hydra = require("hydra")   local function t(str)   :  return api.nvim_replace_termcodes(str, true, true, true)   end       local yanky_hydra = Hydra({     name = "Yank ring",     mode = "n",     heads = {   9    { "p", "<Plug>(YankyPutAfter)", { desc = "After" } },   ;    { "P", "<Plug>(YankyPutBefore)", { desc = "Before" } },   O    { "<C-n>", "<Plug>(YankyCycleForward)", { private = true, desc = "↓" } },   P    { "<C-p>", "<Plug>(YankyCycleBackward)", { private = true, desc = "↑" } },     },   })       )-- choose/change the mappings if you want   for key, putAction in pairs({   "  ["p"] = "<Plug>(YankyPutAfter)",   #  ["P"] = "<Plug>(YankyPutBefore)",   $  ["gp"] = "<Plug>(YankyGPutAfter)",   %  ["gP"] = "<Plug>(YankyGPutBefore)",   }) do   .  vim.keymap.set({ "n", "x" }, key, function()   !    vim.fn.feedkeys(t(putAction))       yanky_hydra:activate()     end)   end       )-- choose/change the mappings if you want   for key, putAction in pairs({   1  ["]p"] = "<Plug>(YankyPutIndentAfterLinewise)",   2  ["[p"] = "<Plug>(YankyPutIndentBeforeLinewise)",   1  ["]P"] = "<Plug>(YankyPutIndentAfterLinewise)",   2  ["[P"] = "<Plug>(YankyPutIndentBeforeLinewise)",       3  [">p"] = "<Plug>(YankyPutIndentAfterShiftRight)",   2  ["<p"] = "<Plug>(YankyPutIndentAfterShiftLeft)",   4  [">P"] = "<Plug>(YankyPutIndentBeforeShiftRight)",   3  ["<P"] = "<Plug>(YankyPutIndentBeforeShiftLeft)",       )  ["=p"] = "<Plug>(YankyPutAfterFilter)",   *  ["=P"] = "<Plug>(YankyPutBeforeFilter)",   }) do   %  vim.keymap.set("n", key, function()   !    vim.fn.feedkeys(t(putAction))       yanky_hydra:activate()     end)   end5��    6       1               �	      �              5�_�                   A       ����                                                                                                                                                                                                                                                                                                                                                             d�r     �   A   B   g    �   A   B   g                            --5��    A                      �
                     5�_�                   A       ����                                                                                                                                                                                                                                                                                                                                                             d�q     �   A   B   g    �   A   B   g              -- Hydra5��    A                      �
                     5�_�                   A       ����                                                                                                                                                                                                                                                                                                                                                             d�q     �   A   B   g    �   A   B   g                            --5��    A                      �
                     5�_�                    A       ����                                                                                                                                                                                                                                                                                                                                                             d�o     �   A   B   g    �   @   A   g                            --5��    @                      �
                     5�_�                  6       ����                                                                                                                                                                                                                                                                                                                                                             d�h     �   6   7   g    �   6   7   g                            --5��    6                      �	                     5�_�                    7       ����                                                                                                                                                                                                                                                                                                                                                             d�h     �   7   8   h    �   7   8   h                            --5��    7                      �	                     5�_�                    8       ����                                                                                                                                                                                                                                                                                                                                                             d�h     �   8   9   i    �   8   9   i                            --5��    8                      �	                     5�_�                     9       ����                                                                                                                                                                                                                                                                                                                                                             d�h     �   9   :   j    �   9   :   j                            --5��    9                      
                     5�_�                    6       ����                                                                                                                                                                                                                                                                                                                                                             d�f     �   6   7   g    �   6   7   g                            --5��    6                      �	                     5�_�      
         	   6   -    ����                                                                                                                                                                                                                                                                                                                                                             d�V     �   6   7   g    �   6   7   g                            --5��    6                      �	                     5�_�   	               
   7       ����                                                                                                                                                                                                                                                                                                                                                             d�W     �   7   8   h    �   7   8   h                            --5��    7                      �	                     5�_�             	      6   -    ����                                                                                                                                                                                                                                                                                                                                                             d�U     �   6   7   g    �   6   7   g                            --5��    6                      �	                     5�_�                    6   -    ����                                                                                                                                                                                                                                                                                                                                                             d�T     �   6   7   g    �   6   7   g                            --5��    6                      �	                     5��