{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      typescript-language-server
      python311Packages.python-lsp-server
      nixd
      nil
      vimPlugins.nvim-treesitter-parsers.hyprlang
    ];
  };
}
