{...}:
{
	programs.fastfetch = {
		enable = true;
		settings = {
			logo = {
				source = "nixos_small";
				padding = {
					right = 1;
				};
			};
			display = {
				size = {
					binaryPrefix = "si";
				};
				color = "blue";
				separator = "  ";
			};
			modules = [
			{
				type = "title";
				key = " ";
				keyColor = "";
			}

			{
				type = "os";
				key = " ";
				keyColor = "";
			}
			{
				type = "kernel";
				key = " " ;
				keyColor = "";
			}
			{
				type = "cpu";
				key = " " ;
				keyColor = "";
			}
			{
				type = "uptime";
				key = "󱑃 ";
				keyColor = "";
			}

			{
				type = "packages" ;
				key = "󰏗 ";
				keyColor = "";
			}
			{
				type = "shell";
				key = " ";
				keyColor = "";
			}
			{
				type = "wm";
				key = " ";
				keyColor = "";
			}
			{
				type = "terminal" ;
				key = " ";
				keyColor = "";
			}
			{
				type = "terminalfont";
				key = " ";
				keyColor = "";
			}
			{
				type = "memory";
				key = " ";
				keyColor = "";
			}
			{
				type = "disk";
				key = "󰋊 ";
				keyColor = "";
			}
			{
				type = "datetime";
				key = "󰕯 ";
				format = "{1}-{3}-{11}";
			}
			{
				type = "datetime";
				key = "󱑆 ";
				format = "{14}:{17}:{20}";
			}
			"break"
				"player"
				"media"
				];
		};
	};
}
