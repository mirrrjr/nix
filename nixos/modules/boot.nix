{
  # boot.loader = {
  #   systemd-boot = {
  #     enable = true;
  #     # extraEntries."ubuntu.conf" = ''
  #     #   title Ubuntu 22.04
  #     #   efi   /efi/ubuntu_sysd/shimx64.efi
  #     # '';
  #   };
  #   efi.canTouchEfiVariables = true;
  # };

  boot.loader.systemd-boot.enable = false;
  boot.loader.grub.enable = true;
  boot.loader.grub.devices = ["nodev"];
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.useOSProber = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
