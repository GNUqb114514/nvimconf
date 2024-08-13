return {
    {   -- Colorscheme: BEFORE ALL OTHERS
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme'tokyonight-night'
        end
    },
    {   -- Status line: Start at starting UI
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        opts = {
            options = {
                theme = 'tokyonight',
            },
        },
    },
    {
        'utilyre/barbecue.nvim',
        name = "barbecue",
        version = '*',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons',
        },
        opts = {},
    },
}
