{pkgs, ...}:
{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal.family = "JetBrainsMono Nerd Font";
        normal.style = "Regular";
        bold.family = "JetBrainsMono Nerd Font";
        bold.style = "Bold";
        italic.family = "JetBrainsMono Nerd Font";
        italic.style = "Italic";
        bold_italic.family = "JetBrainsMono Nerd Font";
        bold_italic.style = "Bold Italic";
        size = 8.5;
        offset.x = 0;
        offset.y = -3;
      };
      bell = {
        animation = "Ease";
        duration = 300;
        color = "#d8dee9";
      };
      colors = { 
        primary = {
          foreground = "#c0caf5";
          background = "#24283b";
        };
        normal = {
          black = "#414868";
          red = "#f7768e";
          green = "#9ece6a";
          yellow = "#e0af68";
          blue = "#7aa2f7";
          magenta = "#bb9af7";
          cyan = "#7dcfff";
          white = "#c0caf5";
        };
        bright = {
          black = "#414868";
          red = "#f7768e";
          green = "#9ece6a";
          yellow = "#e0af68";
          blue = "#7aa2f7";
          magenta = "#bb9af7";
          cyan = "#7dcfff";
          white = "#c0caf5";
        };
      };
      cursor = {
        blink_timeout = 30;
        blink_interval = 500;
        unfocused_hollow = false;
        style = {
          shape = "Beam";
          blinking = "Always";
        };
      };
      window = {
        opacity = 1.0;
        title = "Alacritty";
        dynamic_title = true;
        dynamic_padding = true;
        startup_mode = "Windowed";
        padding = {
          x = 9;
          y = 9;
        };
      };
      mouse = {
        hide_when_typing = true;
        bindings = [
          {
            mouse = "Middle";
            action = "Paste";
          }
        ];
      };
    };
  };
}
