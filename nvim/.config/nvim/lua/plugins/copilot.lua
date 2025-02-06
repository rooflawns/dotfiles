return    {
        "github/copilot.vim",
        config = function()
        -- Optional: Customize keybindings or commands
        vim.g.copilot_no_tab_map = false  -- Disable default <Tab> mapping
        vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })

        vim.api.nvim_set_keymap("n", "<leader>ce", ":Copilot enable<CR>", { noremap = true, silent = true })

        -- Map <leader>cd to disable Copilot
        vim.api.nvim_set_keymap("n", "<leader>cd", ":Copilot disable<CR>", { noremap = true, silent = true })

        -- Optional: Toggle keymap (<leader>ct) to switch between enable/disable
        vim.api.nvim_set_keymap("n", "<M-c>", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })

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

            vim.cmd("Copilot disable")
        end,
    }
