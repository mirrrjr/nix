{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    chromium
    postman
    obsidian
    teams-for-linux
    vlc
    spotify
    imv
    mpv
    vesktop

    # Office
    # libreoffice

    # CLI utils
    git
    bc
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    git-graph
    grimblast
    htop
    ntfs3g
    mediainfo
    playerctl
    silicon
    udisks
    ueberzugpp
    w3m
    wtype
    yt-dlp
    microfetch
    ripgrep
    unzip
    wget
    wl-clipboard
    zip
    bottom
    showmethekey
    yt-dlp

    # Coding stuff
    nodejs_23
    # jdk23
    # yarn
    nest-cli
    python311
    deno

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    # xdg-desktop-portal-gnome
    # gnome-tweaks
    # gnome-browser-connector
    # gnome-shell
    # gnomeExtensions.dash-to-panel

    # Other
    bemoji
    nix-prefetch-scripts

    # Formatter
    nil
    nixd
    nixpkgs-fmt
    alejandra
  ];
}
