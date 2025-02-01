{
  config,
  lib,
  ...
}:
with config.lib.stylix.colors.withHashtag;
with config.stylix.fonts; let
  background = base00;
  secondary-background = base01;
  selection-background = base03;

  foreground = base05;
  inverted-foreground = base00;

  error = base08;

  info = base0B;
  # secondary-info = base0C;

  warning = base0E;
in {
  # Stylix settings for color scheme and fonts
  config = lib.mkIf (config.stylix.enable) {
    programs.stylix.settings = {
      colors = {
        page = {
          background = background;
          foreground = foreground;
        };

        toolbar = {
          background = secondary-background;
          fg = foreground;
        };

        contextmenu = {
          menu = {
            bg = background;
            fg = foreground;
          };
        };

        statusbar = {
          fg = foreground;
          bg = background;
        };

        hints = {
          fg = foreground;
          bg = secondary-background;
        };

        tabs = {
          bg = background;
          selected = {
            fg = foreground;
            bg = selection-background;
          };
        };

        messages = {
          error = {
            bg = error;
            fg = inverted-foreground;
          };
          info = {
            bg = info;
            fg = inverted-foreground;
          };
          warning = {
            bg = warning;
            fg = inverted-foreground;
          };
        };
      };

      fonts = {
        default_family = sansSerif.name;
        default_size = "${toString sizes.applications}pt";

        web = {
          family = {
            cursive = serif.name;
            fantasy = serif.name;
            fixed = monospace.name;
            sans_serif = sansSerif.name;
            serif = serif.name;
            standard = sansSerif.name;
          };

          size.default = builtins.floor (sizes.applications * 4 / 3 + 0.5);
        };
      };
    };
  };

  # GTK settings for Epiphany (and other GTK apps)
  environment.variables = {
    GTK_THEME = "Adwaita-dark"; # Choose your GTK theme, e.g., Adwaita-dark
    GDK_DPI_SCALE = "1.0"; # Set scale factor if needed
  };

  # Enable font configuration for Epiphany and other GTK apps
  programs.fonts.fontconfig = {
    enable = true;
    fonts = {
      "sans-serif" = "Noto Sans";
      "serif" = "Noto Serif";
      "monospace" = "Noto Mono";
    };
  };
}
