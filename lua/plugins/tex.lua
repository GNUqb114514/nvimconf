return {
    {
        'lervag/vimtex',
        config = function ()
            vim.api.nvim_create_augroup("TexConfig", {
                clear = true
            })
            vim.api.nvim_create_autocmd('BufEnter', {
                pattern = '*.tex',
                callback = function ()
                    local filename = vim.fn.expand("%:p") .. '.socketname'
                    local file = io.open(filename, "w+")
                    if file == nil then
                        vim.api.nvim_echo({{'Failed to write to file ' .. filename .. '\n', 'ErrorMsg'}}, true, {})
                        return
                    end
                    file:write(vim.v.servername)
                end
            })
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_compiler_latexmk_engines = {
                _ = '-xelatex'
            }
        end
    }
}
