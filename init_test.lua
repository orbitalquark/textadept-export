-- Copyright 2020-2026 Mitchell. See LICENSE.

local export = require('export')

test('export should prompt and then export to HTML', function()
	local f<close> = test.tmpfile('.lua', [=[
_G.foo=table.concat{1,'bar',true,print}\nbar=[[<>& ]]
]=], true)
	local html_file = f.filename:gsub('%.lua$', '.html')
	local accept_filename = test.stub(html_file)
	local _<close> = test.mock(ui.dialogs, 'save', accept_filename)
	local _<close> = test.defer(function() os.remove(html_file) end)
	local spawn = test.stub()
	local _<close> = test.mock(os, 'spawn', spawn)

	export.to_html()

	test.assert_equal(accept_filename.called, true)
	local dialog_opts = accept_filename.args[1]
	test.assert_equal(dialog_opts.dir, f.filename:match('^(.+)[/\\]'))
	test.assert_equal(dialog_opts.file, html_file:match('[^/\\]+$'))

	test.assert_equal(spawn.called, true)
	test.assert_contains(spawn.args[1], html_file)
end)
