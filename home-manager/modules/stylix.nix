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
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly" "FantasqueSansM"];})
  ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = ./themes/moonfly.yaml # "${pkgs.base16-schemes}/share/themes/moonlight.yaml";

    opacity = {
      desktop = 1.0;
      terminal = 1.0;
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
      size = 22;
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

    image = ../../assets/rick.png;
  };
}
