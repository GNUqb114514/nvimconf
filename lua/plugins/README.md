# Plugins

Here're plugin specs.

## Preface

The most plugins have limited configurations; as you can see I'm lazy.

## Theme and UI

Refer to [`ui.lua`](ui.lua).

### [tokyonight-night](https://github.com/folke/tokyonight)
A high-contrast theme.

Pros:
- High-contrast that make things easy to identify;
- Wide support that make appearance unified.

Cons:
- Dark numbers and breakpoint marks: they should be brighter.

### [lualine](https://github.com/nvim-lualine/lualine.nvim)
A status bar.

Pros:
- Written in lua and compatible with [lazy.nvim `opts` spec](https://lazy.folke.io/spec);
- Natual color transition and unified color changing mode.

Cons:
- Take too many space and make things narrowed
  in small horizontal spaces e.g. neo-tree (but can be turned off)

### [bufferline.nvim](https://github.com/akinsho/bufferline.nvim).
A line that shows all buffers you opened icymi.
P.S.
1. The most features aren't used;
2. the word 'icymi' is a pun. :-)

Pros:
- Fully mouse support that helpful when you forgot `bd`;
- Co-operation with nvim-devicons.

Cons:
- Not co-operation with LSP by default.

### [barbecue.nvim](https://github.com/utilyre/barbecue.nvim).
A line that indicates the hierarchy your cursor at.

Pros:
- Smart folding algorithm that don't remove important sections;
- Perfect style.

Cons:
TODO

### [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) 
Add indent line as you can see in VS Code etc.

Pros:
- Highlight current line.

Cons:
- A bit too thick;
- Too bright.

### [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
Add signs indicates git status on the left.

Pros:
- Lightweight (1.55 ms on i5-4590)

Cons:
TODO

## Utils

Refer to [`utils.lua`](utils.lua).

### [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
Auto pair parens and brackets.

Pros:
- Lightweight (1.48 ms on i5-4590).

Cons:
- Sometimes not that intelligence.

### [flash.nvim](https://github.com/folke/flash.nvim)
**(Disabled)** Jump quickly.

Pros:
- Really quick.

Cons:
- **Does it required to be that quick?**

### [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) 
A tree explorer.

Pros:
- Co-operate with nvim-web-devicons;

Cons:
- Horrible key bindings.

### [which-key.nvim](https://github.com/folke/which-key.nvim) 
**(Disabled)** A tool for hinting keys.

Pros:
- Helpful for learning.

Cons:
- **But we learned.**

### [mini.ai](https://github.com/echasnovski/mini.ai)
More text objects.

Pros:
- A lot of textobjects.

Cons:
- Sometimes conflict with nvim-treesitter-textobjects.

### [nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
Pick windows.
Note that it's just a picker, you need to write usages by your hand.

Pros:
- Lightweight (0.82 ms on i5-4590).

Cons:
- Write anything by hand.

## Finder

Refer to [`telescope.lua`](telescope.lua).

### [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
Well-known plugin that find things.

Pros:
- Flexible design with big ecosystem.

Cons:
- Why we use normal mode in the finding field?

### [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) 
FZF integration for telescope.

I think I haven't to write pros and cons.
Remove it if you haven't or won't use FZF.

## Treesitter

Refer to [`treesitter.lua`](treesitter.lua)

### [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) 
A well-known neovim treesitter binding.

Pros:
- Advanced highlighting;
- Very extendable.

Cons:
- A bit overlap with LSP.

### [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
Textobjects based on treesitter.

Pros:
- Powered by treesitter makes it flexible, configurable and powerful.

Cons:
- Sometimes conflict with nvim-treesitter-textobjects.

## LSP

Refer to [`lsp.lua`](lsp.lua).

### [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) 
An out-of-box configuration set for lsp.

Pros:
- Simple.

Cons:
- Not that flexible.

### [mason.nvim](https://github.com/williamboman/mason.nvim)
A market for LSPs, linters, formatters, etc.

Pros:
- Unified installing for LSP.

Cons:
- When you're attempting use an LSP that not supported...

### [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) 
Integration for nvim-lspconfig and mason.nvim.

Pros:
- Really integrated.

Cons:
TODO

### [lazydev.nvim](https://github.com/folke/lazydev.nvim) 
LuaLS setup for neovim plugins and configs.

Pros:
- Really useful.

Cons:
TODO

### [fidget.nvim](https://github.com/j-hui/figet.nvim) 
LSP progress UI.

Pros:
- Not disturbing.

Cons:
- Weird color whe collapsed with characters.

### [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) 
More powerful and beautiful UI for LSP-related actions.

Pros:
- Good.

Cons:
- Fussy configuration.

## Completion

Refer to [`completion.lua`](completion.lua).

### [nvim-cmp](https://github,com/hrsh7th/nvim-cmp)
Flexible completion framework.

Pros:
- Flexible design with big ecosystem.

Cons:
- Complex config.

### [LuaSnip](https://github.com/L3MON4D3/LuaSnip) 
Snippet engine written in Lua.

Pros:
- Written in Lua.

Cons:
TODO

### [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) 
A collection of snippets.

Pros:
- Widely and useful.

Cons:
- A bit large (3.0M)

### [lspkind.nvim](https://github.com/onsails/lspkind.nvim) 
Pictograms for completion.

Pros:
- Useful for making more space.

Cons:
- Icons may not that intuitive.

### Sources of nvim-cmp
> Generated by following program with manually writed description:
> ```Python
> '\n'.join('- [{1}](https://github.com/{0}/{1})'.format(*i.strip()[1:-2].split('/')) for i in raw.strip().split('\n'))
> ```
> Python make your life easier.
- [cmp-path](https://github.com/hrsh7th/cmp-path): Path
- [cmp-calc](https://github.com/hrsh7th/cmp-calc): Calculate
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): LSP
- [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline): Command line (seems like not necessary)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): Words in buffer

## Debugging

Refer to [debug.lua](debug.lua) 

> [!WARNING]
> Debugging is very special and difference between project.
> You probably have to customize debugging for each project.

### [nvim-dap](https://github.com/mfussenegger/nvim-dap) 
DAP client implement for neovim.

Pros:
- Unified interface.

Cons:
- There're not many server implements.

### [nvim-dap-ui](https://https://rcarriga/nvim-dap-ui) 
UI for nvim-dap.

Pros:
- Complete UI.
- Fully mouse support.

Cons:
TODO

### [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) 
Virtual text to show value of variables for nvim-dap.

Pros:
- Useful: Get value at a glance.

Cons:
- Not that beautiful.

### [telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim) 
Telescope integration for nvim-dap.

Pros:
- Beautiful interface.

Cons:
- There're not a good plan
  to make it doesn't conflict with `continue()` of nvim-dap
  in one key.
