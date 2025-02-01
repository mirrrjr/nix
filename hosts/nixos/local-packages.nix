{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    telegram-desktop
    zed-editor
    pymol
    qutebrowser
    epiphany
    postman

    # Office
    libreoffice

    # CLI Apps
    autodock-vina

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    gnome-tweaks
    gnome-browser-connector
    gnome-shell
    gnomeExtensions.dash-to-panel

    # Others
    boost
  ];
}
