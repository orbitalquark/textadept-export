# Export

Textadept module for outputting source files into various formats like HTML.

Install this module by copying it into your *~/.textadept/modules/* directory
or Textadept's *modules/* directory, and then putting the following in your
*~/.textadept/init.lua*:

    require('export')


## Fields defined by `export`

<a id="export.browser"></a>
### `export.browser` (string)

Path to or the name of the browser executable to show exported HTML files
  in.
  The default value is 'firefox'.

<a id="export.line_numbers"></a>
### `export.line_numbers` (boolean)

Whether or not to show line numbers in exported output.
  The default value is `true`.


## Functions defined by `export`

<a id="export.to_html"></a>
### `export.to_html`(*filename, out\_filename*)

Exports filename *filename* (or the current file) to filename *out_filename*
(or the user-specified file) in HTML format, and then opens the result in a
web browser.

Parameters:

* *`filename`*: The filename to export. The default value is the current
  buffer's filename.
* *`out_filename`*: The filename to export to. If `nil`, the user is prompted
  for one.


---
