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
- Lightweight (1.55 ms on i5-4590 that outdated enough)

Cons:
TODO
