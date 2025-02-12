{
  # New Config
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.devices = ["nodev"];
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.useOSProber = true;

  # Old config
  # boot.loader = {
  #   systemd-boot = {
  #     enable = true;
  #     extraEntries."ubuntu.conf" = ''
  #       title Ubuntu 22.04
  #       efi   /efi/ubuntu/shimx64.efi
  #     '';
  #   };
  #   efi.canTouchEfiVariables = true;
  # };
}
