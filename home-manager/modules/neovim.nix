{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      typescript-language-server
      python311Packages.python-lsp-server
      nixd
      vimPlugins.nvim-treesitter-parsers.hyprlang
    ];
    extraConfig = ''
      " Install AstroNvim
      if empty(glob("~/.config/nvim"))
        silent !git clone https://github.com/AstroNvim/template ~/.config/nvim --depth 1
      endif
    '';
  };
}
