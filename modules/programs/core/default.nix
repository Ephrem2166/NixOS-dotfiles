{pkgs,outputs, inputs, ...}:
{

  home.packages = with pkgs; [
    # Android
    scrcpy
    android-tools

    # Browsers and Internet
    chromium
    discord
    google-chrome
    qbittorrent-qt5
    librewolf
    megasync
    microsoft-edge
    thunderbird

    # Development
    nodejs_18

    # Rust
    rustup
    # C Related
    gcc
    gnumake
    cmake
    autoconf
    automake
    libtool
    # Python
    python3Full
    imath
    pystring

    shellcheck
    tokei # displays statistics about your code. 

    # Media
    yt-dlp
    aria2
    #mpv
    feh
    vlc
    audacious
    strawberry
    mkvtoolnix
    nomacs
    ffmpeg-full
    imagemagick
    gimp
    flameshot

    # Office
    foliate
    libreoffice-qt6-fresh
    mupdf
    pandoc

    # Text Editors 
    # Utilities 
    bat
    btop
    cliphist
    duf
    eza
    fastfetch
    fd
    fzf
    htop
    lazygit
    mc
    ncdu
    neofetch
    nnn
    p7zip
    procs
    ranger
    ripgrep
    starship
    stow
    tlrc
    tmux
    unrar
    unzip
    xclip
    yazi
    zip

    # Terminals
    alacritty
    foot
    kitty
    wezterm
  ];
  }
