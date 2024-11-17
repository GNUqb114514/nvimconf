return {
    {
        'lervag/vimtex',
        config = function ()
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_compiler_latexmk_engines = {
                _ = '-xelatex'
            }
            vim.g.vimtex_toc_config = {
                fold_enable = 1,
                indent_levels = 0,
                show_help = 0,
                split_pos = "vert"
            }
        end
    }
}
