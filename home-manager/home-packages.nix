{pkgs, ...}: {
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
    micromamba
    deno

    # Other
    nix-prefetch-scripts

    # Formatter
    nil
    nixd
    nixpkgs-fmt
    alejandra
  ];
}
