return {
    {
        "windwp/nvim-autopairs",
        opts = {
            enable_check_bracket_line = true,
        },
    },
    {
        "folke/flash.nvim",
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        opts = {},
        keys = {
            { "<leader>e", [[<cmd>Neotree toggle<CR>]], mode = { "n", "v" }},
        },
    },
    {
        "folke/which-key.nvim",
        opts = {},
    },
    {
        'echasnovski/mini.ai',
        opts = {},
    },
    {
        "s1n7ax/nvim-window-picker",
        config = function ()
            vim.keymap.set('n', "<leader>pw",
                function ()
                    local window_number = require('window-picker').pick_window()
                    if window_number then vim.api.nvim_set_current_win(window_number) end
                end
            )
        end
    },
}
