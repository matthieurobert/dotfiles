return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          enable = true,
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "dockerfile", "go", "gomod", "yaml" },
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
