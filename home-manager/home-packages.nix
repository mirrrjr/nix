{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # CLI utils
    helix
    vim
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
    python311

    # Other
    nix-prefetch-scripts
    nil
    nixd
    nixpkgs-fmt
    alejandra
  ];
}
