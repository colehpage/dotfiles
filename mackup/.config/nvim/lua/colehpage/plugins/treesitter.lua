local status_ok, ts = pcall(require, "nvim-tree.configs")
if not status_ok then
	return
end

ts.setup {
	highlight = {
		enable = true,
		disable = {}
	},
	indent = {
		enable = true,
		disable = {"python"}
	},
	ensure_installed = {
		"tsx",
		"toml",
		"fish",
		"php",
		"json",
		"yaml",
		"swift",
		"css",
		"html",
		"lua"
	},
	autopairs = {
		enable = true
	},
	autotag = {
		enable = true
	}
}

local parser_config = require "nvim-tree.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = {"javascript", "typescript.tsx"}
