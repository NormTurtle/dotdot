-- Paste images from clipboard
return {
    {
        {
            "HakonHarnes/img-clip.nvim",
            ft = "markdown",
            opts = {
                -- add options here
                -- or leave it empty to use the default settings
            },
            keys = {
                -- suggested keymap
                { "<leader>p", "<Plug>PasteImage<cr>", desc = "Paste clipboard image" },
            },
        },

        {
            "vhyrro/luarocks.nvim",
            priority = 1001, -- this plugin needs to run before anything else
            opts = {
                rocks = { "magick" },
            },
        },

        {
            "3rd/image.nvim",
            dependencies = { "luarocks.nvim" },
            opts = {
                backend = "kitty",
                integrations = {
                    markdown = {
                        enabled = true,
                        clear_in_insert_mode = false,
                        download_remote_images = true,
                        only_render_image_at_cursor = false,
                        filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
                    },
                    neorg = {
                        enabled = true,
                        clear_in_insert_mode = false,
                        download_remote_images = true,
                        only_render_image_at_cursor = false,
                        filetypes = { "norg" },
                    },
                },
                max_width = nil,
                max_height = nil,
                max_width_window_percentage = nil,
                max_height_window_percentage = 50,
                kitty_method = "normal",
            },
        },
    },
}
