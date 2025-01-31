{...}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      editor = {
        line-number = "relative";
        mouse = true;
        middle-click-paste = true;
        cursorline = false;
        cursorcolumn = false;
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        statusline = {
          left = ["mode" "spinner"];
          center = ["file-name"];
          right = ["diagnostics" "selections" "position" "file-encoding" "file-line-ending" "file-type"];
          separator = "│";
          mode.normal = "NORMAL";
          mode.insert = "INSERT";
          mode.select = "SELECT";
        };
      };
      keys = {
        normal = {
          C-s = ":w!";
          C-w = ":buffer-close";
          C-a = ":reload-all";
          C-v = [":clipboard-paste-before"];
          C-r = ":fmt";
        };
        insert = {
          C-s = [":w!" "normal_mode"];
          C-w = [":buffer-close" "normal_mode"];
          C-v = [":clipboard-paste-before"];
        };
      };
    };

    languages = {
      lsp = {
        display-messages = true;
        display-inlay-hints = true;
        servers = {
          nil = {
            command = "nil";
          };
        };
      };
      formatter = {
        nix = {
          command = "alejandra";
        };
      };
    };
    # languages = lib.importTOML ./languages.toml;

    # themes = "tokyonight";
    # ignores = [
    #   "node_modules"
    # ];
    # languages = {
    #   language-server.typescript-language-server = with pkgs.nodePackages; {
    #     command = "${typescript-language-server}/bin/typescript-language-server";
    #     args = [ "--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib" ];
    #   };
    # };
  };
}
