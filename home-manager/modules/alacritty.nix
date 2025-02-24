{lib, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "none"; # Top barni yashiradi
        opacity = 0.8;
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
