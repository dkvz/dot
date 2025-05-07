local wezterm = require("wezterm")

-- Auto-switch to light mode with OS
-- Copied from here: https://wezterm.org/config/lua/wezterm.gui/get_appearance.html
-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Gruvbox Material (Gogh)"
	else
		return "Catppuccin Latte (Gogh)"
	end
end

return {
	--color_scheme = 'Gruvbox Material (Gogh)',
	color_scheme = "Everforest Dark (Gogh)",
	--color_scheme = 'TokyoNight (Gogh)',
	--font = wezterm.font 'FiraCode Nerd Font',
	font = wezterm.font("CaskaydiaCove Nerd Font"),
	font_size = 13,
	line_height = 1.0,
	window_background_opacity = 0.97,
	default_cursor_style = "SteadyBar",
	term = "xterm-256color",
	window_decorations = "TITLE | RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	-- Might want to try this on Windows:
	--freetype_load_target = "HorizontalLcd",
	-- Uncomment on Windows:
	--max_fps = 120,
}
