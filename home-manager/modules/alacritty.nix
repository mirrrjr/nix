{ lib, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "None";
        startup_mode = "Maximized";
        blur = false;
      };

      scrolling = {
        history = 1500;
      };

      font = {
        builtin_box_drawing = true;
        normal = {
          style = lib.mkForce "Bold";
        };
      };

      colors = {
        draw_bold_text_with_bright_colors = true;

        bright = {
          black = "#949494";
          blue = "#74b2ff";
          cyan = "#85dc85";
          green = "#36c692";
          magenta = "#ae81ff";
          red = "#ff5189";
          white = "#e4e4e4";
          yellow = "#c6c684";
        };

        cursor = {
          cursor = "#8e8e8e";
          text = "#080808";
        };

        normal = {
          black = "#323437";
          blue = "#80a0ff";
          cyan = "#79dac8";
          green = "#8cc85f";
          magenta = "#cf87e8";
          red = "#ff5d5d";
          white = "#c6c6c6";
          yellow = "#e3c78a";
        };

        primary = {
          background = "#080808";
          bright_foreground = "#eeeeee";
          foreground = "#bdbdbd";
        };

        selection = {
          background = "#b2ceee";
          text = "#080808";
        };
      };
    };
  };
}