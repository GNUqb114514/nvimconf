return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            -- Only one of these is needed, not both.
            "nvim-telescope/telescope.nvim", -- optional
        },
        opts = {},
        config = function (opts)
            require("neogit").setup(opts)
            local augroup = vim.api.nvim_create_augroup("NeoTreeGit", {})
            vim.api.nvim_create_autocmd({"BufLeave"}, {
                pattern = {"NeogitStatus"},
                group = augroup,
                callback = function ()
                    require("neo-tree.events").fire_event("git_event")
                end
            })
        end
    }
}
