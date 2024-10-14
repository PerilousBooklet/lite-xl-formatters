-- mod-version:3 lite-xl 2.1
-- for nph nim formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.nph_args = {}

formatter.add_formatter {
	name = "nph",
	file_patterns = {"%.nim$"},
	command = "nph $ARGS $FILENAME",
	args = config.nph_args
}
