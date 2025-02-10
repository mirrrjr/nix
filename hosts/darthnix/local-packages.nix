{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    telegram-desktop
    chromium
    pymol
    postman
    gparted

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

    # ADFR muhiti
    (pkgs.buildFHSUserEnv {
      name = "adfr-env";
      targetPkgs = pkgs:
        with pkgs; [
          bash
          # pip env
          python311Packages.pip
          python311Packages.vina
          python311Packages.numpy
          python311Packages.scipy
          python311Packages.rdkit
          python311Packages.meeko
          python311Packages.gemmi

          coreutils
          glibc
          xorg.libX11
          xorg.libXext
          xorg.libXrender
          xorg.libXft
          fontconfig
        ];
      profile = "export PATH=$PWD:\$PATH";
      runScript = "bash";
    })
  ];
}
