Vim�UnDo� n4���z���D�x
,x�?�78v����                                      d�    _�                             ����                                                                                                                                                                                                                                                                                                                            \                    V       d�    �              \   -       local registers = require("registers")           registers.setup({   :        -- Show these registers in the order of the string   B        show = "*+\"-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz:",   F        -- Show a line at the bottom with registers that aren't filled           show_empty = true,   -        -- Expose the :Registers user command   %        register_user_command = true,   I        -- Always transfer all selected registers to the system clipboard            system_clipboard = true,   O        -- Don't show whitespace at the begin and end of the register's content           trim_whitespace = true,   L        -- Don't show registers which are exclusively filled with whitespace   $        hide_only_whitespace = true,   a        -- Show a character next to the register name indicating how the register will be applied   #        show_register_types = true,           bind_keys = {   �            -- Show the window when pressing " in normal mode, applying the selected register as part of a motion, which is the default behavior of Neovim   C            normal    = registers.show_window({ mode = "motion" }),   �            -- Show the window when pressing " in visual mode, applying the selected register as part of a motion, which is the default behavior of Neovim   C            visual    = registers.show_window({ mode = "motion" }),   �            -- Show the window when pressing <C-R> in insert mode, inserting the selected register, which is the default behavior of Neovim   C            insert    = registers.show_window({ mode = "insert" }),       �            -- When pressing the key of a register, apply it with a very small delay, which will also highlight the selected register   B            registers = registers.apply_register({ delay = 0.1 }),   X            -- Immediately apply the selected register line when pressing the return key   3            ["<CR>"]  = registers.apply_register(),   C            -- Close the registers window when pressing the Esc key   1            ["<Esc>"] = registers.close_window(),       O            -- Move the cursor in the registers window down when pressing <C-n>   5            ["<C-n>"] = registers.move_cursor_down(),   M            -- Move the cursor in the registers window up when pressing <C-p>   3            ["<C-p>"] = registers.move_cursor_up(),   O            -- Move the cursor in the registers window down when pressing <C-j>   5            ["<C-j>"] = registers.move_cursor_down(),   M            -- Move the cursor in the registers window up when pressing <C-k>   3            ["<C-k>"] = registers.move_cursor_up(),   M            -- Clear the register of the highlighted line when pressing <DeL>   ?            ["<Del>"] = registers.clear_highlighted_register(),   L            -- Clear the register of the highlighted line when pressing <BS>   ?            ["<BS>"]  = registers.clear_highlighted_register(),   
        },           events = {   �            -- When a register line is highlighted, show a preview in the main buffer with how the register will be applied, but only if the register will be inserted or pasted   r            on_register_highlighted = registers.preview_highlighted_register({ if_mode = { "insert", "paste" } }),   
        },           symbols = {   7            -- Show a special character for line breaks               newline = "⏎",   4            -- Show space characters without changes               space = " ",   0            -- Show a special character for tabs               tab = "·",   [            -- The character to show when a register will be applied in a char-wise fashion   +            register_type_charwise = "ᶜ",   [            -- The character to show when a register will be applied in a line-wise fashion   *            register_type_linewise = "ˡ",   \            -- The character to show when a register will be applied in a block-wise fashion   ,            register_type_blockwise = "ᵇ",   
        },           window = {   <            -- The window can't be wider than 100 characters               max_width = 100,   V            -- Show a small highlight in the sign column for the line the cursor is on   (            highlight_cursorline = true,   >            -- Don't draw a border around the registers window               border = "none",   r            -- Apply a tiny bit of transparency to the the window, letting some characters behind it bleed through               transparency = 10,   
        },   D        -- Highlight the sign registers as regular Neovim highlights           sign_highlights = {   *            cursorlinesign = "CursorLine",   '            signcolumn = "NormalFloat",   "            cursorline = "Visual",   #            selection = "Constant",   !            default = "Function",   "            unnamed = "Statement",               read_only = "Type",   %            expression = "Exception",   !            black_hole = "Error",   *            alternate_buffer = "Operator",                last_search = "Tag",               delete = "Special",               yank = "Delimiter",               history = "Number",               named = "Todo",   
        },       	       })5��            \                      [             5��