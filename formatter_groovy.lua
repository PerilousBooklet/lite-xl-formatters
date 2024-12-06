-- mod-version:3 lite-xl 2.1
-- for Groovy formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.groovy_formatter = {  }

formatter.add_formatter {
	name = "Groovy Formatter",
	file_patterns = { "%.groovy$", "%.gvy$", "%.gy$", "%.gsh$" },
	command = "format $ARGS $FILENAME",
	args = config.groovy_formatter
}
