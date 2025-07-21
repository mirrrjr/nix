{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    firefox
    postman
    obsidian
    vlc
    imv

    # Office
    libreoffice

    # CLI utils
    git
    bc
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
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
    curl
    wl-clipboard
    zip
    bottom
    showmethekey

    # Coding stuff
    nodejs
    # jdk23
    # yarn
    # nest-cli
    python311
    deno
    php
    rust

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
