{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    chromium
    postman

    # Office
    libreoffice

    # CLI utils
    helix
    vim
    neovim
    gcc
    git
    ffmpeg
    ffmpegthumbnailer
    fzf
    htop
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
    xdg-desktop-portal-gnome
    gnome-tweaks
    gnome-browser-connector
    gnome-shell
    gnomeExtensions.dash-to-panel

    # Other
    nix-prefetch-scripts

    # Formatter
    nil
    nixd
    nixpkgs-fmt
    alejandra
  ];
}
