{
  programs.zed-editor = {
    enable = true;
    userSettings = {
      "buffer_font_family" = "Fira Code";
      "buffer_font_size" = 14;
      "theme" = "Gruvbox Material";
      "ui_font_family" = "Fira Sans";
      "ui_font_size" = 14;

      features = {
        copilot = true;
      };
      telemetry = {
        metrics = false;
      };
      vim_mode = true;

      format_on_save = true;

      lsp = {
        nil = {
          initialization_options = {
            formatting = {
              command = ["alejandra" "--quiet" "--"];
            };
          };
        };
      };
    };
  };
}
