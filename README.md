# azettl
A tiny neovim plugin which provides basic tools for maintaining zettlkasten-like notes.
## Installation
If you are already comfortable with a different plugin manager, it should work just fine.
Here is a `lazy.nvim` example for reference.
```lua
return {
    "averyallison02/azettl",
    opts = {
        notes_dir = "~/remote/pi/notes",
    },
    keys = {
        -- NOTE: If you change zettl_command, don't forget to update it here.
        { "<leader>zn", "<Cmd>Zettl new<CR>", desc = "New Note" },
        { "<leader>zf", "<Cmd>Zettl find<CR>", desc = "Grep Notes"}
    },
}
```
## Configuration
A table of options can be passed to this plugin's `setup()` function.
Options and their defaults are listed [here](./docs/opts.md).
## Usage
By default, azettl uses the `:Zettl` vim command.
Refer to [commands](./docs/commands.md) for a list of valid arguments to `:Zettl`.
You can map these commands in the plugin spec (like above) or in a seperate config file.
## License
See [LICENSE](./LICENSE) for license information.
