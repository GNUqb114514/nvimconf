return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-buffer",
        },
        config = function ()
            local cmp = require('cmp')
            cmp.setup {
                sources = {
                    {name = "path"},
                    {name = "calc"},
                    {name = "nvim_lsp"},
                },
                window = {
                    documentation = cmp.config.window.bordered(),
                },
                mapping = {
                    ['<Tab>'] = function ()
                        cmp.select_next_item{behavior=cmp.SelectBehavior.Insert}
                    end,
                    ['<S-Tab>'] = function ()
                        cmp.select_prev_item{behavior=cmp.SelectBehavior.Insert}
                    end,
                },
            }
        end
    },
}
