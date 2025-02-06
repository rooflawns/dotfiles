return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Set key mappings
    vim.keymap.set('n', '<leader>n', ':Neotree toggle<CR>')
    vim.keymap.set('n', '<leader>b', ':Neotree focus<CR>')

    -- Configure Neo-tree to show hidden files by default
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,    -- Show hidden files (e.g., .gitignore)
          hide_gitignored = false,  -- Show gitignored files (optional)
        },
      },
    })
  end
}

