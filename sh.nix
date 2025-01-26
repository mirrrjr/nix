{ config, pkgs, ...}:
let
  myAliases = {
    ll = "ls -l";
    ".." = "cd ..";
  };
in
{
  programs = {
    bash = {
        enable = true;
        shellAliases = myAliases;
    };

    zsh = {
        enable = true;
        shellAliases = myAliases;
        plugins = [
          {
            name = "zsh-autosuggestions";
            src = pkgs.fetchFromGitHub {
              owner = "zsh-users";
              repo = "zsh-autosuggestions";
              rev = "v0.4.0";
              sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
            };
          }
        ];
        oh-my-zsh = {
          enable = true;
          theme = "bira";
          plugins = [
            "git"
          ];
        };
    };

    kitty = {
      enable = true;
      shellIntegration.enableZshIntegration = true;
      settings = {
        scrollback_lines = 10000;
        enable_audio_bell = false;
        update_check_interval = 0;
        background_opacity = 0.8;
        hide_window_decorations = "yes";
      };
    };

    helix = {
      enable = true;
      defaultEditor = true;
      settings = {
        theme = "tokyonight";
        editor = {
          line-number = "relative";
          lsp.display-messages = true;
          mouse = true;
          middle-click-paste = true;
          cursorline = false;
          cursorcolumn = false;
        };
      };
      # themes = "tokyonight";
      ignores = [
        "node_modules"
      ];
    };

  };
}
