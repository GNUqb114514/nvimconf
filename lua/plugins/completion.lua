return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function ()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "onsails/lspkind.nvim",
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-buffer",
            {
                "saadparwaiz1/cmp_luasnip",
                dependencies = {
                    "L3MON4D3/LuaSnip",
                }
            },
        },
        config = function ()
            local luasnip = require("luasnip")
            local cmp = require("cmp")
            cmp.setup({
                preselect = cmp.PreselectMode.None,
                formatting = {
                    format = require('lspkind').cmp_format {
                        mode = 'symbol',
                        elipsis_char = '...',
                    },
                    expandable_indicator = true,
                    fields = {'abbr', 'kind'},
                },
                snippet = {
                    expand = function (args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },
                sources = {
                    {name = "path"},
                    {name = "calc"},
                    {name = "nvim_lsp"},
                    { name = "luasnip" },
                },
                window = {
                    documentation = cmp.config.window.bordered(),
                },
                mapping = {
                    ['<CR>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if luasnip.expandable() then
                                luasnip.expand()
                            else
                                cmp.confirm({
                                    select = false,
                                })
                            end
                        elseif luasnip.locally_jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end),
                    ['<S-CR>'] = cmp.mapping(function(fallback)
                        if luasnip.locally_jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item {
                                behavior = cmp.SelectBehavior.Select,
                            }
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                },
            })
        end
    },
}
