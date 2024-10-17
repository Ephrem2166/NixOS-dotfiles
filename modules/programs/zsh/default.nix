{pkgs, ...}:
{
  programs.zsh = {
    enable = true;
    oh-my-zsh.enable = true;
    enableCompletion = true;
    plugins = [
      {
          name = "zsh-autosuggestions";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-autosuggestions";
            rev = "v0.7.0";
            sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w=";
          };
        }
        {
          name = "zsh-256color";
          src = pkgs.fetchFromGitHub {
            owner = "chrissicool";
            repo = "zsh-256color";
            rev = "9d8fa1015dfa895f2258c2efc668bc7012f06da6";
            sha256 = "sha256-Qd9pjDSQk+kz++/UjGVbM4AhAklc1xSTimLQXxN57pI=";
          };
        }
        {
          name = "zsh-syntax-highlighting";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-syntax-highlighting";
            rev = "0.7.0";
            sha256 = "sha256-eRTk0o35QbPB9kOIV0iDwd0j5P/yewFFISVS/iEfP2g=";
          };
        }
      ];
      shellAliases = {
      # Easier directory navigation
  ".."="cd ..";
  "..."="cd ../../";
  "...."="cd ../../../";
  "....."="cd ../../../../";
  "-- -"="cd -";
  # Fonts 
  fontcache="fc-cache -f -v";
  fontfind="fc-list : family style";

  # Size 
  df="df -h";
  free="free -m";

  # Process
psa="ps auxf";
psgrep="ps aux | grep -v grep | grep -i -e VSZ -e";
psmem="ps auxf | sort -nr -k 4";
pscpu="ps auxf | sort -nr -k 3";
 
# List 
ls="eza --all --icons=always --color=always --group-directories-first";
lt="eza --all --tree --color-scale --level=2 --icons=always --color=always --group-directories-first";
ll="eza -al --no-time --no-user --no-permissions --no-filesize --icons=always --color=always --group-directories-first";
la="eza -alh --git --icons=always --color=always --group-directories-first";
     
# General 
q = "exit";
c = "clear";

cat = "bat";

mkdir = "mkdir -p";

};
# Add extra initialization for Starship
    initExtra = ''
      eval "$(starship init zsh)"
    '';

  };
}
