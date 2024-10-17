{pkgs, ...}:
{
  programs.starship = {
    enable = true;
    settings = pkgs.lib.importTOML ./starship/starship.toml;
  };
}
