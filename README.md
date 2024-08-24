# My neovim config

This is my simple neovim config from scratch.

## Quick view

If you're from [Dotfyle](https://dotfyle.com),
then you might already know something about this config.
Here're some simple summary for it,
and you can find more informations in the README file under each folder
after I write them. :)

### Plugins

- Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim);
- Theme: [tokyonight-night](https://github.com/folke/tokyonight);
- Status line: [lualine](https://github.com/nvim-lualine/lualine.nvim);
- Finder: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) with:
  - [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim);
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter);
- Builtin LSP with:
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig);
  - [mason.nvim](https://github.com/williamboman/mason.nvim);
    - Combined with lspconfig by [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim);
  - [lazydev.nvim](https://github.com/folke/lazydev.nvim);
  - [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim);
- Completion: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) with a lot of sources;
- Debugging: [nvim-dap](https://github.com/mfussenegger.nvim-dap) with ui plugins;
- A lot of useful utils.

### Key mappings

Most key mappings:
1. starts with `<leader>`;
2. with the normal 'action-object' pattern like builtin instructions.

There're also some special mappings:
- `<leader>` followed by a single key because they're frequently used;
- A single non-alphanumeric key for those what be used
  only in a special state or starts a special state.
  > e.g. The key for start debugging is `<F5>`
  > because you'll never type things when you're debugging your program,
  > and the key for step into is `<F11>`
  > because you'll probably press it after pressing `<F5>`
  > to start debugging, or other debugging keys
  > rather than other keys like `<leader>th` (for fuzzy finding help tags).

## FAQ

Here are some questions that you may ask.

> **F**requently **A**sked **Q**uestions, of course.

### Why not [LazyVim](https://github.com/LazyVim/LazyVim) or sth else?

1. I want a lightweight config,
   but they're almost always contains a lot of plugins that I don't want.
2. Instead learn exist mappings, I would define my own. It's obviously that
   custom things always easy to remember than existing things to who made it custom.

> Okay, to be honest in fact I just hate start screen plugins.

### Why not use a start screen plugin, like [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)?

Because:
1. the features they provided does not useful for me. e.g. for things defined in LazyVim:
   - to find a file I can use [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim);
   - to create a file I can `nvim {newfilename}`;
   - pick recent file means work starts from previous edited project,
     but for me I know what project I just write;
   - it's horrible to find texts without opening any file;
   - to open a config I can `nvim {path}`;
   - no need for restore sessions;
   - for lazy.nvim palette I can `:Lazy`.
2. they hid poor Uganda children-related things.
