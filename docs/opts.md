# opts
## zettl_command: string
The vim command used to invoke this plugin's functions.
Default: `"Zettl"`
## notes_dir: string
The directory in which to save new notes.
Do **not** include a trailing `/` in this option.
Default: `"~/notes"`
## finder: function
The function which is called to grep your notes directory.
The default requires `snacks.nvim` to be installed, but you should be able to use any picker you like.
Default:
```lua
function()
    Snacks.picker.grep({ dirs = { opts.notes_dir } })
end
```
## titler: string
The shell command used to create the unique identifier filename for new files.
In general, the identifiers should not have a reason to change, which is why the default is a creation date down to the second.
Default: `"date '+%Y%m%d%H%M%S.md'"`
