{
  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 22 80 443 3000 ];
  networking.firewall.allowedUDPPorts = [ 53 123 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
