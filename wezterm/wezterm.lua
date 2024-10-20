local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true

-- font and color scheme
config.color_scheme = "GitHub Dark"
-- config.font = wezterm.font("BlexMono Nerd Font", { weight = "Medium" })
config.font = wezterm.font("Cascadia Code")
config.font_size = 12.5

-- remove terminal padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- more customization
-- config.window_background_opacity = 0.95

-- shortcuts
-- config.disable_default_key_bindings = true
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
	{
		mods = "LEADER",
		key = "c",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "b",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		mods = "LEADER",
		key = "n",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		mods = "LEADER|SHIFT",
		key = "%",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		mods = "LEADER|SHIFT",
		key = '"',
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		mods = "ALT",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "ALT",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "ALT",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "ALT",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "LeftArrow",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		mods = "LEADER",
		key = "RightArrow",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		mods = "LEADER",
		key = "DownArrow",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		mods = "LEADER",
		key = "UpArrow",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		mods = "LEADER",
		key = "z",
		action = wezterm.action.TogglePaneZoomState,
	},
}

for i = 0, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i),
	})
end

-- customize background image
-- config.window_background_image = "/home/vomaksh/Pictures/Wallhaven/wallhaven-2y3keg.png"
-- config.window_background_image_hsb = {
-- 	brightness = 0.1,
-- 	hue = 1,
-- 	saturation = 1,
-- }

-- customize title bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true

local scheme = wezterm.get_builtin_color_schemes()["GitHub Dark"]

config.colors = {
	tab_bar = {
		background = scheme.background,
		new_tab = { bg_color = "#2e3440", fg_color = scheme.ansi[8], intensity = "Bold" },
		new_tab_hover = { bg_color = scheme.ansi[1], fg_color = scheme.brights[8], intensity = "Bold" },
		active_tab = { bg_color = "#4338ca", fg_color = "#ffffff" },
		inactive_tab = { bg_color = "#2e3440", fg_color = "#ffffff" },
		inactive_tab_hover = { bg_color = scheme.ansi[1], fg_color = "#ffffff" },
	},
}

wezterm.on("update-right-status", function(window, _)
	local SOLID_LEFT_ARROW = ""
	local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
	local prefix = ""

	if window:leader_is_active() then
		prefix = " " .. utf8.char(0x1f30a) .. " " -- ocean wave
		-- SOLID_LEFT_ARROW = utf8.char(0xe0b2)
	end

	window:set_left_status(wezterm.format({
		{ Background = { Color = "#b7bdf8" } },
		{ Text = prefix },
		ARROW_FOREGROUND,
		{ Text = SOLID_LEFT_ARROW },
	}))
end)
--
return config
