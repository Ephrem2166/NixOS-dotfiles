{...}:
{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      which-key
      evil
      evil-collection
      general
      doom-modeline
      doom-themes
      dashboard
      vertico
      consult
      orderless
      marginalia
      projectile
      orderless
      corfu
      kind-icon
      treesit-auto
      eglot
      eldoc-box
      treemacs
      minimap
    ];
    extraConfig = builtins.readFile ./emacs/.emacs;
  };
}
