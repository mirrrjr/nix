{ pkgs, ...}:
{
  hardware = {
    opengl ={
      enable = true;
      driSupport = true;
      driSuppurt32Bit = true;
    };

    nvidia = {
      modesetting.enable = true;
    };
  };

  services.xserver = {
    enable = true;
    layout = "us";
    xkbOptions = "eurosign:e";
    videoDrivers = [ "nvidia" ];
    libinput.enable = true;
  };

}
