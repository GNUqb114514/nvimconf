return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    config = function ()
        require('telescope').load_extension('fzf')
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>tw', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
    end
}
