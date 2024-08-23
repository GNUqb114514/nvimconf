return {
    {
        "L3MON4D3/LuaSnip",
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
            local cmp = require('cmp')
            local luasnip = require('luasnip')
            cmp.setup {
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
                    ['<Tab>'] = function (fallback)
                        if cmp.visible() then
                            cmp.select_next_item{behavior=cmp.SelectBehavior.Insert}
                        elseif luasnip.locally_jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end,
                    ['<CR>'] = function (fallback)
                        if cmp.visible() then
                            if luasnip.expandable() then
                                luasnip.expand()
                            else
                                cmp.confirm({select = false})
                            end
                        else
                            fallback()
                        end
                    end,
                    ['<S-Tab>'] = function (fallback)
                        if cmp.visible() then
                            cmp.select_prev_item{behavior=cmp.SelectBehavior.Insert}
                        elseif luasnip.locally_jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end,
                },
            }
        end
    },
}
