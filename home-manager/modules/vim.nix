{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;

    # your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings = {
      vim = {
        viAlias = false;
        vimAlias = true;

        lsp = {
          enable = true;
          formatOnSave = true;
        };

        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
        };

        statusline.lualine.enable = true;
        telescope.enable = true;
        autopairs.nvim-autopairs.enable = true;
        autocomplete.nvim-cmp.enable = true;
        filetree.nvimTree.enable = true;
        snippets.luasnip.enable = true;

        filetree = {
          neo-tree = {
            enable = false;
          };
        };

        tabline = {
          nvimBufferline.enable = true;
        };

        treesitter.context.enable = true;

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        git = {
          enable = true;
          gitsigns.enable = true;
          gitsigns.codeActions.enable = false; # throws an annoying debug message
        };

        notify = {
          nvim-notify.enable = true;
        };
        comments = {
          comment-nvim.enable = true;
        };
        languages = {
          enableLSP = true;
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          assembly.enable = true;
          clang.enable = true;
          markdown.enable = true;
          nu.enable = true;
          bash.enable = true;
          nix.enable = true;
          rust.enable = true;
          ts.enable = true;
          html.enable = true;
        };
      };
    };
  };
}
