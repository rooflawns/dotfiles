return
    -- Other plugins...

    -- nvim-cmp plugins
    {
        "hrsh7th/nvim-cmp",
        enabled = false,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",       -- Buffer source for nvim-cmp
            "hrsh7th/cmp-path",         -- Path source for nvim-cmp
            "hrsh7th/cmp-cmdline",      -- Command line source for nvim-cmp
            "L3MON4D3/LuaSnip",         -- Snippet engine
            "saadparwaiz1/cmp_luasnip", -- Snippet source for nvim-cmp
            "onsails/lspkind.nvim",     -- Icons for completion items
        },
        config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- Load VSCode-style snippets
        require("luasnip.loaders.from_vscode").lazy_load()

        -- Configure nvim-cmp
        cmp.setup({
            snippet = {
                expand = function(args)
                luasnip.lsp_expand(args.body)
                end,
            },
            mapping = {
                ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                  ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                  ["<CR>"] = cmp.mapping.confirm({ select = true }),
                 -- ["<C-Space>"] = cmp.mapping.complete(),
            },
            sources = cmp.config.sources({
                { name = "copilot" },
                { name = "luasnip" },
            }, {
                { name = "buffer" },
                { name = "path" },
            }),
            formatting = {
                format = require("lspkind").cmp_format({
                    mode = "symbol_text",
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })

        -- Setup for command line completion (optional)
        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
                          sources = {
                              { name = "buffer" },
                          },
        })

        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
                          sources = cmp.config.sources({
                              { name = "path" },
                          }, {
                              { name = "cmdline" },
                          }),
        })
        end,
    }

