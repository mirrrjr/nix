{
  boot.loader = {
    systemd-boot = {
      enable = true;
      extraEntries."ubuntu.conf" = ''
        title Ubuntu 22.04
        efi   /efi/ubuntu_sysd/shimx64.efi
      '';
    };
    efi.canTouchEfiVariables = true;
  };
}
