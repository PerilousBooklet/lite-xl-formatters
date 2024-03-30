-- mod-version:3 lite-xl 2.1
-- for V vfmt formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.vfmt_args = { "-w" }

formatter.add_formatter {
	name = "vfmt",
	file_patterns = {"%.vv?$", "%.vsh$"},
	command = "v fmt $ARGS $FILENAME",
	args = config.vfmt_args
}
