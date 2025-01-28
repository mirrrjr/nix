{ pkgs, ... }: {
  home.packages = with pkgs; [
    whitesur-gtk-theme
  ];
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      package = pkgs.whitesur-gtk-theme;
      name = "whitesur";
    };
  };
}
