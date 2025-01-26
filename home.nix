{ config, pkgs, lib, ... }:
{
  imports = [
    ./sh.nix
  ];

  options = {
    awesome.homenamager.option = lib.mkOption {
      type = lib.types.str;
      default = "darthmirr";
    };
  };

  config = {
    home.username = "darthmirr";
    home.homeDirectory = "/home/darthmirr";

    programs.git = {
      enable = true;
      userName = "ilosrim";
      userEmail = "ilosrim@yahoo.com";
      extraConfig = {
        init.defaultBranch = "master";
      };
    };

    home.stateVersion = "24.11"; # Please read the comment before changing.

    home.packages = with pkgs; [
      virtualbox
      gnome-tweaks
      gnome-browser-connector
      gnome-shell
    ];

    home.file = {
        # ".screenrc".source = dotfiles/screenrc;

        # # You can also set the file content immediately.
        # ".gradle/gradle.properties".text = ''
        #   org.gradle.console=verbose
        #   org.gradle.daemon.idletimeout=3600000
        # '';
    };
    # home.file.".config/kitty/kitty.conf".source = ./kitty.conf;

    home.sessionVariables = {
        EDITOR = "hx";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
  };
}
