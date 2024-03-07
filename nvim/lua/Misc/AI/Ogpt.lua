return {
        -- Simple, minimal Lazy.nvim configuration
        {
                "huynle/ogpt.nvim",
                -- event = "VeryLazy",
                cmd = "OGPT",
                opts = {
                        default_provider = "gemini",
                        providers = {
                                gemini = {
                                        api_key = "AIzaSyDMyLM0u3hi_BpEaFTtCceBcswKYfih1_U",
                                        api_host = os.getenv("GEMINI_API_HOST"),
                                }
                        }
                },
                dependencies = {
                        "MunifTanjim/nui.nvim",
                        "nvim-lua/plenary.nvim",
                        "nvim-telescope/telescope.nvim"
                }
        }
}
