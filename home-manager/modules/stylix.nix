{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.stylix.homeManagerModules.stylix];

  home.packages = with pkgs; [
    dejavu_fonts
    jetbrains-mono
    noto-fonts
    noto-fonts-lgc-plus
    texlivePackages.hebrew-fonts
    noto-fonts-emoji
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
  ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/windows-95.yaml";

    opacity = {
      desktop = 0.7;
      terminal = 0.9;
    };

    targets = {
      neovim.enable = false;
      waybar.enable = false;
      wofi.enable = false;
      hyprland.enable = false;
      hyprlock.enable = false;
    };

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };

    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
      monospace = {
        name = "JetBrains Mono";
        package = pkgs.jetbrains-mono;
      };
      sansSerif = {
        name = "Noto Sans";
        package = pkgs.noto-fonts;
      };
      serif = {
        name = "Noto Serif";
        package = pkgs.noto-fonts;
      };

      sizes = {
        terminal = 11;
        applications = 11;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.whitesur-icon-theme;
      dark = "WhiteSur";
      light = "WhiteSur";
    };

    image = pkgs.fetchurl {
      url = "https://github.com/ilosrim/my-configs/blob/master/assets/wallpapers/wxp.jpg";
      sha256 = "0ybi8hm2jdbvnr4xia6d1qdarl7mlqac3i352hvfhnvhbm31pl5a";
    };
  };
}
