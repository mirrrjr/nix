{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    chromium
    postman
    vesktop

    # Office
    libreoffice

    # CLI utils
    helix
    vim
    neovim
    gcc
    git
    bc
    bottom
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
    showmethekey
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

    # Coding stuff
    nodejs_22
    yarn
    nest-cli
    python311
    deno

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    # xdg-desktop-portal-hyprland
    xdg-desktop-portal-gnome
    gnome-tweaks
    gnome-browser-connector
    gnome-shell
    gnomeExtensions.dash-to-panel

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
