vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})
-- Clear search highlight with <leader>h
vim.api.nvim_set_keymap("n", "<leader>h", ":noh<CR>", { noremap = true, silent = true })

-- Map 'qq' to quit Neovim (in normal mode)
vim.api.nvim_set_keymap('n', '<leader>q', ':q!<CR>', { noremap = true, silent = true })

-- Map 'ww' to save (write) the current file (in normal mode)
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-Space>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })
-- Map <leader>ce to enable Copilot
vim.api.nvim_set_keymap("n", "<leader>ce", ":Copilot enable<CR>", { noremap = true, silent = true })

-- Map <leader>cd to disable Copilot
vim.api.nvim_set_keymap("n", "<leader>cd", ":Copilot disable<CR>", { noremap = true, silent = true })

-- Optional: Toggle keymap (<leader>ct) to switch between enable/disable
vim.api.nvim_set_keymap("n", "<leader>ct", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })

-- Lua function to toggle Copilot state
function ToggleCopilot()
local status = vim.fn["copilot#Enabled"]() -- Check if Copilot is enabled (returns 1 if true)
if status == 1 then
  vim.cmd("Copilot disable")
  print("Copilot Disabled")
  else
    vim.cmd("Copilot enable")
    print("Copilot Enabled")
    end
    end


