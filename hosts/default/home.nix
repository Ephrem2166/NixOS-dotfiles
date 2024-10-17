{ config, lib, pkgs, ... }:

{
  home.username = "ephrem";
  home.homeDirectory = "/home/ephrem";
  home.stateVersion = "24.05"; 

  imports = [
    ../../modules/programs

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    #".config/alacritty".source = ../../dotfiles/.config/alacritty;
    #".config/foot".source = ../../dotfiles/.config/foot;
    #".config/wezterm".source = ../../dotfiles/.config/wezterm;
    #".config/mpv".source = ../../dotfiles/.config/mpv;
    #".config/yazi".source = ../../dotfiles/.config/yazi;
    #".config/btop".source = ../../dotfiles/.config/btop;
    #".config/htop".source = ../../dotfiles/.config/htop;
    #".config/starship".source = ../../dotfiles/.config/starship;
    #".zshrc".source = ../../dotfiles/.config/.zshrc;
  };


  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
