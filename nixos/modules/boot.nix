{
  boot.loader = {
    systemd-boot = {
      enable = true;
      extraEntries."ubuntu.conf" = ''
        title Ubuntu 22.04
        efi   /efi/ubuntu/shimx64.efi
      '';
    };
    efi.canTouchEfiVariables = true;
  };
}
