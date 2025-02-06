return {     
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()

  
  local config = require("nvim-treesitter.configs")
  config.setup({
    ensure_installed = {"lua", "hyprlang", "python", "c", "json", "css"},
    highlight = {enable = true },
    indent = { enable = true },
  })
  end 
}
