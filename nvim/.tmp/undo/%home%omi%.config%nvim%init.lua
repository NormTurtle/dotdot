Vim�UnDo� �T�&Vۑț�����'P���l#w2�u���   �   I        -- vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')   @          4       4   4   4    e�S{    _�                     
        ����                                                                                                                                                                                                                                                                                                                                       
           V        e�J�     �   	      �      if vim.g.neovide then       require("Neovide")   end5��    	                     �       1       :       5�_�                    2        ����                                                                                                                                                                                                                                                                                                                                       
           V        e�J�     �   1   3   �      *local colorscheme = "kanagawa" -- kanagawa5��    1                           +       .       5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                            6           ;           V        e�J�    �   5   <   �      @local colored, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)   if not colored then   ^    print("Colorscheme not found! Set to habamax") -- print error if colorscheme not installed   "    vim.cmd("colorscheme habamax")   
    return   end5��    5                     �      �       �       5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            6           ;           V        e�J�    �   a   g   �      1key.set("o", "ar", "a]") -- [r]ectangular bracket   )key.set("o", "ac", "a}") -- [c]urly brace   >key.set("o", "am", "aW") -- [m]assive word (= no shift needed)   #key.set("o", "aq", 'a"') -- [q]uote   *key.set("o", "az", "a'") -- [z]ingle quote�   q   t   �      3key.set("n", "j", "gj") -- move vert by visual line   3key.set("n", "k", "gk") -- move vert by visual line�   u   w   �      1key.set({ "n", "v" }, "L", "$") --"end of line" ,�   {   }   �      -key.set("!", "<M-h>", "<Left>") --"move left"�   }   �   �      0key.set("!", "<M-l>", "<Right>") -- "move right"   /key.set("!", "<M-j>", "<Down>") --  "move down"   +key.set("!", "<M-k>", "<Up>") --  "move up"   0key.set("!", "<C-f>", "<Right>") -- forward-char   0key.set("!", "<C-b>", "<Left>") -- backward-char�   �   �   �      /key.set("i", "<M-b>", "<S-Left>") --"move left"�   �   �   �      /key.set("c", "<M-b>", "<S-Left>") --"move left"�   �   �   �      Bkey.set("n", "<leader>sv", "<cmd> new <cr>") -- split window horiz   ?key.set("n", "<leader>se", "<C-w>=") -- make window equal width   ?key.set("n", "<leader>sx", ":close<CR>") -- close current split�   �   �   �      9key.set("n", "<leader>to", ":tabnew<CR>") -- open new Tab�   �   �   �      9key.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab   9key.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab�   �   �   �          vim.cmd([[5��    �                     �                     �    �   (      '      +   c      9       A       �    �   *                  �                     �    �   -      (      -   !      ~       �       �    �   "                  �                     �    �   "                  l                     �    }   !            %   C      �       �       �    {                      �                     �    u                      �                     �    q                   1      3       E       �    a               !         �       �       5�_�                    .       ����                                                                                                                                                                                                                                                                                                                                                             eЯ#     �   -   0   �      "-- local colorscheme = "rose-pine"   #-- local colorscheme = "tokyonight"5��    -                     �      G       A       5�_�                    /       ����                                                                                                                                                                                                                                                                                                                                                             eЯ$     �   .   0   �       local colorscheme = "tokyonight"5��    .                     �      !       $       5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                            6          ;          V       eЯ'    �   5   <   �      C-- local colored, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)   -- if not colored then   a--     print("Colorscheme not found! Set to habamax") -- print error if colorscheme not installed   %--     vim.cmd("colorscheme habamax")   --     return   -- end5��    5                     �      �       �       5�_�      
              ;       ����                                                                                                                                                                                                                                                                                                                            6          ;          V       eЯ(    �   7   ;   �      ^    print("Colorscheme not found! Set to habamax") -- print error if colorscheme not installed   "    vim.cmd("colorscheme habamax")   
    return5��    7                         ~       �       5�_�         	       
   I       ����                                                                                                                                                                                                                                                                                                                            A   9       I          V   :    e�R�    �   @   J   �   	   9-- if not vim.g.neovide then -- no transparent on neovide   !--  -- set transparent on startup   J-- vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   +-- -- set transparent on colorscheme change   -- function set_transparency()   L--   vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   -- end   A-- vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')   -- end5��    @       	       	       1      �      t      5�_�   
                 K       ����                                                                                                                                                                                                                                                                                                                            W          K          V       e�R�   	 �   A   J   �       -- set transparent on startup   Gvim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   (-- set transparent on colorscheme change   function set_transparency()   I  vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   end   >vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    A                   i      �       7      5�_�                   H        ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   G   H           5��    G                      �                     5�_�                   E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �      #        function set_transparency()5��    D                                           5�_�                    E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �      $        function  set_transparency()5��    D                                           �    D                     $                     �    D                     #                     �    D                     "                     �    D                     !                     �    D                                         �    D                     $                     �    D                     #                     �    D                     "                     �    D                     !                     �    D                                         �    D                                         �    D                                           5�_�                   E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �      $        function  set_transparency()5��    D                                           5�_�                    M       ����                                                                                                                                                                                                                                                                                                                            L          L          V       e�R�     �   L   N   �      L--   vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')5��    L                     +	      M       J       5�_�                    K       ����                                                                                                                                                                                                                                                                                                                            L          L          V       e�R�     �   J   L   �      -- function set_transparency()5��    J                     �                    5�_�                    W       ����                                                                                                                                                                                                                                                                                                                            O          W          V       e�R�     �   N   X   �   	   3--   -- Set transparency for other highlight groups   M--   vim.api.nvim_command('highlight NonText guibg=transparent ctermbg=none')   P--   vim.api.nvim_command('highlight SignColumn guibg=transparent ctermbg=none')   O--   vim.api.nvim_command('highlight VertSplit guibg=transparent ctermbg=none')   P--   vim.api.nvim_command('highlight StatusLine guibg=transparent ctermbg=none')   R--   vim.api.nvim_command('highlight StatusLineNC guibg=transparent ctermbg=none')   -- end   ?-- -- Call set_transparency() whenever a color scheme is loaded   A-- vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    N       	       	       u	      P      5      5�_�                    A       ����                                                                                                                                                                                                                                                                                                                            I          A          V       e�R�     �   @   J   �   	   6if not vim.g.neovide then -- no transparent on neovide   %        -- set transparent on startup   O        vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   0        -- set transparent on colorscheme change   #        function set_transparency()   W                vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')           end   F        vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')   end5��    @       	       	       1      �      �      5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            I          A          V       e�R�   
 �   M   N          --5��    M                      �	                     5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            I          A          V       e�R�    �   K   T   �      (--   -- Set transparency for Normal text   I  vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   0  -- Set transparency for other highlight groups   J  vim.api.nvim_command('highlight NonText guibg=transparent ctermbg=none')   M  vim.api.nvim_command('highlight SignColumn guibg=transparent ctermbg=none')   L  vim.api.nvim_command('highlight VertSplit guibg=transparent ctermbg=none')   M  vim.api.nvim_command('highlight StatusLine guibg=transparent ctermbg=none')   O  vim.api.nvim_command('highlight StatusLineNC guibg=transparent ctermbg=none')�   T   W   �      <-- Call set_transparency() whenever a color scheme is loaded5��    T                      F                     �    K                    	      �      
      5�_�                    [   '    ����                                                                                                                                                                                                                                                                                                                            I          A          V       e�S     �   Z   [          B-- vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true } )5��    Z                            C               5�_�                    \   "    ����                                                                                                                                                                                                                                                                                                                            I          A          V       e�S    �   [   \          A-- vim.api.nvim_set_keymap("n", "U", "<C-R>", { noremap = true })5��    [                      B      B               5�_�                    H   $    ����                                                                                                                                                                                                                                                                                                                            A   $       H   $       V   $    e�S'     �   @   I   �      9-- if not vim.g.neovide then -- no transparent on neovide   (--         -- set transparent on startup   R--         vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   3--         -- set transparent on colorscheme change   &--         function set_transparency()   Z--                 vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   --         end   I--         vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    @                     1      �      �      5�_�      !               I       ����                                                                                                                                                                                                                                                                                                                            A   $       H   $       V   $    e�S(    �   H   J   �      -- end5��    H                     �                    5�_�       "           !   M       ����                                                                                                                                                                                                                                                                                                                            A   $       H   $       V   $    e�S,    �   G   J   �      F        vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    G                      �                     5�_�   !   #           "   O       ����                                                                                                                                                                                                                                                                                                                            T          O          V       e�S4     �   N   O          6        -- Set transparency for other highlight groups   P        vim.api.nvim_command('highlight NonText guibg=transparent ctermbg=none')   S        vim.api.nvim_command('highlight SignColumn guibg=transparent ctermbg=none')   R        vim.api.nvim_command('highlight VertSplit guibg=transparent ctermbg=none')   S        vim.api.nvim_command('highlight StatusLine guibg=transparent ctermbg=none')   U        vim.api.nvim_command('highlight StatusLineNC guibg=transparent ctermbg=none')5��    N                      �	      �              5�_�   "   $           #   F       ����                                                                                                                                                                                                                                                                                                                            O          O          V       e�S7     �   F   M   �    �   F   G   �    5��    F                      �              �      5�_�   #   %           $   S       ����                                                                                                                                                                                                                                                                                                                            U          U          V       e�S;     �   R   S          0        --   -- Set transparency for Normal text5��    R                      �
      1               5�_�   $   &           %   E       ����                                                                                                                                                                                                                                                                                                                            T          T          V       e�S=     �   E   G   �    �   E   F   �    5��    E                      3              1       5�_�   %   '           &   F       ����                                                                                                                                                                                                                                                                                                                            U          U          V       e�S?     �   E   G   �      0        --   -- Set transparency for Normal text5��    E                     ;                     5�_�   &   (           '   W        ����                                                                                                                                                                                                                                                                                                                            X          V           V       e�SG     �   V   W          <-- Call set_transparency() whenever a color scheme is loaded5��    V                      Z      =               5�_�   '   )           (   O        ����                                                                                                                                                                                                                                                                                                                            W          V           V       e�SI     �   O   Q   �    �   O   P   �    5��    O                      �
              =       5�_�   (   *           )   O        ����                                                                                                                                                                                                                                                                                                                            X          W           V       e�SJ     �   N   O           5��    N                      �
                     5�_�   )   +           *   S        ����                                                                                                                                                                                                                                                                                                                            S           U           V        e�SL     �   R   S          function set_transparency()   O        vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   end5��    R                      %      p               5�_�   *   ,           +   S        ����                                                                                                                                                                                                                                                                                                                            S           S           V        e�SM     �   R   S           5��    R                      %                     5�_�   +   -           ,   S        ����                                                                                                                                                                                                                                                                                                                            S           S           V        e�SM    �   R   S          >vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    R                      %      ?               5�_�   ,   0           -   S        ����                                                                                                                                                                                                                                                                                                                            S           S           V        e�SN    �   E   G   �      +        -- Set transparency for Normal text�   G   N   �      6        -- Set transparency for other highlight groups   P        vim.api.nvim_command('highlight NonText guibg=transparent ctermbg=none')   S        vim.api.nvim_command('highlight SignColumn guibg=transparent ctermbg=none')   R        vim.api.nvim_command('highlight VertSplit guibg=transparent ctermbg=none')   S        vim.api.nvim_command('highlight StatusLine guibg=transparent ctermbg=none')   U        vim.api.nvim_command('highlight StatusLineNC guibg=transparent ctermbg=none')�   N   Q   �      <-- Call set_transparency() whenever a color scheme is loaded5��    N                     �
              	       �    G                   �      {      �      �    E                     ;                     5�_�   -   1   /       0   R        ����                                                                                                                                                                                                                                                                                                                            R          @          V       e�Su     �   Q   R          end5��    Q                      a                     5�_�   0   2           1   P        ����                                                                                                                                                                                                                                                                                                                            R          @          V       e�Sv     �   O   P          D        -- Call set_transparency() whenever a color scheme is loaded5��    O                      �
      E               5�_�   1   3           2   P        ����                                                                                                                                                                                                                                                                                                                            Q          @          V       e�Sw     �   O   Q   �      F        vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    O                     �
      G       J       5�_�   2   4           3   @        ����                                                                                                                                                                                                                                                                                                                            O           @           V        e�Sy    �   ?   @          -- Transparancy   6if not vim.g.neovide then -- no transparent on neovide   %        -- set transparent on startup   O        vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   0        -- set transparent on colorscheme change   #        function set_transparency()   3                -- Set transparency for Normal text   W                vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')   >                -- Set transparency for other highlight groups   X                vim.api.nvim_command('highlight NonText guibg=transparent ctermbg=none')   [                vim.api.nvim_command('highlight SignColumn guibg=transparent ctermbg=none')   Z                vim.api.nvim_command('highlight VertSplit guibg=transparent ctermbg=none')   [                vim.api.nvim_command('highlight StatusLine guibg=transparent ctermbg=none')   ]                vim.api.nvim_command('highlight StatusLineNC guibg=transparent ctermbg=none')           end    5��    ?                      !      �              5�_�   3               4   @        ����                                                                                                                                                                                                                                                                                                                            @           @           V        e�Sz    �   ?   A   �      I        -- vim.cmd('autocmd ColorScheme * call v:lua.set_transparency()')5��    ?                      !                     5�_�   -       .   0   /   @       ����                                                                                                                                                                                                                                                                                                                            @          @          V       e�Sq     �   ?   S        5��    ?                      !      D              5�_�   -           /   .   ?       ����                                                                                                                                                                                                                                                                                                                                                             e�Sf     �   >   @        5��    >                                           5�_�                    F   $    ����                                                                                                                                                                                                                                                                                                                            X           L   $       V   $    e�S"     �   E   G   �      W                vim.api.nvim_command('highlight Normal guibg=transparent ctermbg=none')5��    E                     B      [       X       5�_�                    E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �      )        function local set_transparency()5��    D                                           5�_�                  E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �              function ()5��    D                                           �    D                     !                     �    D                                         �    D                     $                     �    D                     #                     �    D                     "                     �    D                     !                     �    D                                         �    D                     $                     �    D                     #                     �    D                     "                     �    D                     !                     �    D                                         �    D                                         �    D                                           5�_�                     E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �              function local()5��    D                                           5�_�                   E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �      #        function set_Transparency()5��    D                    $                    5�_�                    E       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   D   F   �      #        function Set_transparency()5��    D                                         5�_�                    G       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   F   I        5��    F                      �                     5�_�              
   	   '       ����                                                                                                                                                                                                                                                                                                                                                             e�R�     �   '   (   �      -- �   (   )   �    �   '   )   �      ;hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE5��    '                      `                     �    '                     b                     �    '                     a                     �    '                  ;   `             ;       5��