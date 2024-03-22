-- mod-version:3 lite-xl 2.1
-- for R r-styler formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.rstyler_args = {}

formatter.add_formatter {
	name = "r-styler",
	file_patterns = {"%.r$","%.R$"},
	command = "R CMD ? $ARGS $FILENAME",
	args = config.rstyler_args
}
