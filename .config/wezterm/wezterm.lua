local wezterm = require("wezterm")

return {
	hyperlink_rules = wezterm.default_hyperlink_rules(),
	use_fancy_tab_bar = true,
	force_reverse_video_cursor = true,
	enable_wayland = false,
	color_scheme = "Tokyo Night",
	automatically_reload_config = true,
	tab_bar_at_bottom = true,
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
	-- leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 },
	-- keys = {
	-- 	-- splitting
	-- 	{
	-- 		mods = "LEADER",
	-- 		key = ".",
	-- 		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	-- 	},
	-- 	{
	-- 		mods = "LEADER",
	-- 		key = "/",
	-- 		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	-- 	},
	-- 	{
	-- 		mods = "LEADER",
	-- 		key = "Space",
	-- 		action = wezterm.action.RotatePanes("Clockwise"),
	-- 	},
	-- },
}
