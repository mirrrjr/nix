{pkgs, ...}: let
  unstable = import <nixpkgs-unstable> {config = {allowUnfree = true;};};
in {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # CLI utils
    helix
    vim
    neovim
    gcc
    git
    ffmpeg
    ffmpegthumbnailer
    fzf
    htop
    microfetch
    ripgrep
    unzip
    wget
    wl-clipboard
    zip

    # Coding stuff
    nodejs_22
    yarn
    nest-cli
    python311
    unstable.deno

    # Other
    nix-prefetch-scripts

    # Formatter
    nil
    nixd
    nixpkgs-fmt
    alejandra
  ];
}
