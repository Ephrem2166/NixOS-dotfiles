{...}:
{
	programs.yazi = {
		enable = true;

		xdg.configFile."yazi" = {
			source = ./.;
			recursive = true;
		};
	};
}
