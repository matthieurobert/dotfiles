return {
        "nvim-treesitter/nvim-treesitter",
        tag = "v0.9.2",
        main = 'nvim-treesitter.configs',
        opts = {
                ensure_installed = { 
                        "c",
                        "lua",
                        "vim",
                        "vimdoc",
                        "query",
                        "typescript",
                        "json",
                        "yaml",
                        "dockerfile",
                        "go",
                        "hcl",
                        "terraform",
                },

                auto_install = true,
                highlight = {
                        enable = true,
                },
        }
}
