{pkgs, ...}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;

    # User settings
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

    # Languages
    languages = {
      language = [
        {
          name = "typescript";
          roots = ["deno.json" "deno.jsonc" "package.json"];
          auto-format = true;
          language-servers = ["deno-lsp"];
        }
        {
          name = "javascript";
          roots = ["deno.json" "deno.jsonc" "package.json"];
          auto-format = true;
          language-servers = ["deno-lsp"];
        }
        {
          name = "rust";
          auto-format = false;
        }
        {
          name = "nix";
          scope = "source.nix";
          injection-regex = "nix";
          file-types = ["nix"];
          shebangs = [];
          auto-format = true;
          comment-token = "#";
          language-servers = ["nil" "nixd"];
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          formatter = {
            command = "alejandra";
            args = ["--quiet" "--"];
          };
        }
        {
          name = "json";
          scope = "source.json";
          injection-regex = "json";
          file-types = [
            "json"
            "jsonc"
            "arb"
            "ipynb"
            "geojson"
            " gltf"
            "webmanifest"
            {glob = "flake.lock";}
            {glob = ".babelrc";}
            {glob = ".bowerrc";}
            {glob = ".jscrc";}
            "js.map"
            "ts.map"
            "css.map"
            {glob = ".jslintrc";}
            "jsonl"
            "jsonld"
            {glob = ".vuerc";}
            {glob = "composer.lock";}
            {glob = ".watchmanconfig";}
            "avsc"
            "ldtk"
            "ldtkl"
            {glob = ".swift-format";}
          ];
        }
        {
          name = "html";
          scope = "text.html.basic";
          injection-regex = "html";
          file-types = [
            "html"
            "htm"
            "shtml"
            "xhtml"
            "xht"
            "jsp"
            "asp"
            "aspx"
            "jshtm"
            "volt"
            "rhtml"
            "cshtml"
          ];
          block-comment-tokens = {
            start = "<!--";
            end = "-->";
          };
          auto-format = true;
          indent = {
            tab-width = 2;
            unit = "  ";
          };
        }
      ];

      language-server.deno-lsp = {
        command = "deno";
        args = ["lsp"];
        config.deno.enable = true;
      };

      language-server.typescript-language-server = with pkgs.nodePackages; {
        command = "${typescript-language-server}/bin/typescript-language-server";
        args = ["--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib"];
      };

      language-server.nil = {
        command = "nil";
        args = ["--stdio"];
      };

      language-server.vscode-json-language-server = {
        auto-format = true;
        indent = {
          tab-width = 2;
          unit = "  ";
        };
      };

      language-servers.vscode-html-language-server = {
        auto-format = true;
        indent = {
          tab-width = 2;
          unit = "  ";
        };
      };
    };

    # themes = "tokyonight";
    ignores = [
      "node_modules"
    ];
  };
}
