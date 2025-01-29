{ lib, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      # window.opacity = 1.0;
      window = {
        decorations = "none"; # Top barni yashiradi
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
