# opts
## zettl_command: string
The vim command used to invoke this plugin's functions.
Default: `"Zettl"`
## notes_dir: string
The directory in which to save new notes.
Do **not** include a trailing `/` in this option.
Default: `"~/notes"`
## titler: string
The shell command used to create the unique identifier filename for new files.
In general, the identifiers should not have a reason to change, which is why the default is a creation date down to the second.
Default: `"date '+%Y%m%d%H%M%S.md'"`
