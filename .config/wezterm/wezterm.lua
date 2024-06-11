local wezterm = require("wezterm")
local colors = require("lua/rose-pine").colors()

return {
	hyperlink_rules = wezterm.default_hyperlink_rules(),
	-- colors = colors,
	color_scheme = "tokyonight",
	enable_wayland = false,
	automatically_reload_config = true,
	font = wezterm.font_with_fallback({
		{
			family = "Cascadia Code",
			harfbuzz_features = {
				"ss01",
				"ss02",
				"ss03",
				"ss19",
				"ss20",
				"calt",
			},
		},
		{
			family = "Symbols Nerd Font Mono",
			scale = 0.8,
		},
	}),
	font_size = 13.0,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 1,
	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
}
