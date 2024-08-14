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
        opts = {},
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
    {
        'akinsho/bufferline.nvim',
        opts = {},
    },
    {   -- Show lines for indents.
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {},
    },
    {   -- Git integration, show lines indicating line status in git.
        'lewis6991/gitsigns.nvim',
        opts = {},
    },
}
