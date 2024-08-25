# Root dir for configs

There're my all configs.

As we knows, NeoVim use `lua` directory for `require()` schema,
so we put configs here.

As you can see, I have only 2 lines in `init.lua`,
so we have configs here configs here.

## [`lazynvim.lua`](lazynvim.lua)

There's the bootstrap scripts for [lazy.nvim](https://github.com/folke/lazy.nvim/).
Almost just copied from [the document](https://lazy.folke.io/installation). 

## [`conf.lua`](conf.lua)

There's the non-plugin-related configs.

> but some plugins does read them and change their behavior
> based on it.

I think you probably can understand it by comments and helps.

## [`plugins/`](plugins) 

There's all plugins and their configs.

For details see [lazy.nvim official document](lazy.folke.io). 

[`README.md` there](plugins/README.md) contains detailed explanations (after I write it).
