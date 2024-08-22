return {
    {
        "neovim/nvim-lspconfig",
    },
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
        },
        opts = {
            ensure_installed = {"lua_ls", "rust_analyzer", "pylsp"},
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup {}
                end
            }
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
        },
    },
    { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings           
    {
        "j-hui/fidget.nvim",
        opts = {},
    },
    {
        "nvimdev/lspsaga.nvim",
        keys = {
            {'<leader>cn', '<cmd>Lspsaga rename ++project<CR>',
                mode = 'n', desc = 'Rename symbol'},
            {'K', '<cmd>Lspsaga hover_doc<CR>',
                mode = 'n', desc = 'Get hover docs'},
        },
        opts = {
            rename = {
                keys = {
                    quit = '',
                },
            },
        },
    },
}
