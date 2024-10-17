{...}:
{
	programs.wezterm = {
		enable = true;
		extraConfig = ''
			return {
				font = wezterm.font("JetBrainsMono Nerd Font"),
				     font_size =8, 
				     color_scheme = "Catppuccin Mocha",
				     hide_tab_bar_if_only_one_tab = true,
				     enable_tab_bar = false,
				     window_decorations = "NONE",
				     window_background_opacity = 1.0,
				     window_padding = {
					     left = 0,
					     right = 0,
					     top = 0,
					     bottom = 0,
				     }
			}
		'';
	};
}
