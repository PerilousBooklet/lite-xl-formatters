-- mod-version:3 lite-xl 2.1
-- for SQL sql-formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.sqlformatter_args = { "--fix" }

formatter.add_formatter {
	name = "sql-formatter",
	file_patterns = {"%.sql$"},
	command = "sql-formatter $ARGS $FILENAME",
	args = config.sqlformatter_args
}
