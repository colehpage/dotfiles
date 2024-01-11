require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "terminal", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors)
    colors.bg = "#12121f"
	colors.bg_dark = "#090910"
	colors.bg_float = "#12121f"
	colors.bg_highlight = "#29293f"
	colors.bg_popup = "#12121f"
	colors.bg_search = "#29293f"
	colors.bg_sidebar = "#12121f"
	colors.bg_statusline = "#12121f"
	colors.bg_visual = "#29293f"
	colors.black = "#15151f"
	colors.blue = "#95baff"
	colors.blue0 = "#83acf6"
	colors.blue1 = "#83acf6"
	colors.blue2 = "#66efeb"	--cyan
	colors.blue5 = "#7facff"
	colors.blue6 = "#b4f9f8"
	colors.blue7 = "#749fee"
	colors.border = "#14141f"
	colors.border_highlight = "#14141f"
	colors.comment = "#565f89"
	colors.cyan = "#83acf6"	-- blue
	colors.dark3 = "#565f89"
	colors.dark5 = "#606788"
	colors.delta = {
		add = "#739fee",
		delete = "#ef4a73"
	}
	colors.diff = {
		add = "#749fee",
		change = "#66efeb",
		delete = "#ef4a73",
		text = "#d4d7ff"
	}
	colors.error = "#f6668a"
	colors.fg = "#d4d7ff"
	colors.fg_dark = "#c4c7ee"
	colors.fg_float = "#c4c7ee"
	colors.fg_gutter = "#3c3c5d"
	colors.fg_sidebar = "#c4c7ee"
	colors.git = {
	  add = "#749fee",
	  change = "#66efeb",
	  delete = "#ef4a73",
	  ignore = "#fdaf50"
	}
	colors.gitSigns = {
	  add = "#749fee",
	  change = "#66efeb",
	  delete = "#ef4a73"
	}
	colors.green = "#8af5b5"
	colors.green1 = "#8af5b5"
	colors.green2 = "#7cdea0"
	colors.hint = "#7cdea0"
	colors.info = "#7ff3ef"
	colors.magenta = "#8b85e0"
	colors.magenta2 = "#ef4a73"
	colors.orange = "#ffbc6a"
	colors.purple = "#978fec"
	colors.red = "#f1547b"
	colors.red1 = "#f1547b"
	colors.teal = "#b4f9f8"
	colors.terminal_black = "#12121f"
	colors.warning = "#fafa8a"
	colors.yellow = "#f0d28b"
end,
  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

vim.cmd("colorscheme tokyonight")
