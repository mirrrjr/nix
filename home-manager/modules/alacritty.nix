{lib, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "none";
        # opacity = 0.8;
        blur = true;
      };

      font = {
        builtin_box_drawing = true;
        normal = {
          style = lib.mkForce "Bold";
        };
      };
    };
  };
}
