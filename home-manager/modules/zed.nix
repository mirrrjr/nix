{
  programs.zed-editor = {
    enable = true;
    userSettings = {
      "buffer_font_family" = "ComicShannsMono Nerd Font";
      "buffer_font_size" = 14;
      "theme" = "Tokyo Night";
      "ui_font_family" = "ComicShannsMono Nerd Font";
      "ui_font_size" = 14;

      features = {
        copilot = true;
      };
      telemetry = {
        metrics = false;
      };
      vim_mode = false;

      lsp = {
        nil = {
          autoArchive.enable = true;
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
