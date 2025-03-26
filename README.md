# Export

Textadept module for outputting source files into various formats like HTML.

Install this module by copying it into your *~/.textadept/modules/* directory or Textadept's
*modules/* directory, and then putting the following in your *~/.textadept/init.lua*:

```lua
local export = require('export')
```

There will be a "File > Export" menu.

<a id="export.browser"></a>
## `export.browser`

Command used to open exported HTML files in the user's default web browser.

<a id="export.line_numbers"></a>
## `export.line_numbers`

Show line numbers in exported output.

The default value is `true`.

<a id="export.to_html"></a>
## `export.to_html`([*filename*=buffer.filename[, *out_filename*]])

Exports a file to HTML format and opens the result in a web browser.

Parameters:
- *filename*:  The filename to export.
- *out_filename*:  The filename to export to. If `nil`, the user is prompted for one.



