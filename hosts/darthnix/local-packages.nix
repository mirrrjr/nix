{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    telegram-desktop
    chromium
    postman

    # Office
    libreoffice

    # CLI Apps

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
