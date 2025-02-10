{
  pkgs,
  config,
  ...
}: {
  nixpkgs.config.packageOverrides = pkgs: {
    intel-vaapi-driver = pkgs.intel-vaapi-driver.override {enableHybridCodec = true;};
  };

  # Hardware acceleration
  hardware = {
    graphics = {
      enable = true;

      # Vulkan support
      # driSupport = true;
      enable32Bit = true;

      # VA-API
      extraPackages = with pkgs; [
        intel-media-driver # LIBVA_DRIVER_NAME=iHD
        intel-vaapi-driver # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
        libvdpau-va-gl
        vaapiVdpau
      ];
    };

    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.beta;

      # Open drivers (NVreg_OpenRmEnableUnsupportedGpus=1)
      open = true;

      # nvidia-drm.modeset=1
      modesetting.enable = true;

      # Allow headless mode
      nvidiaPersistenced = true;

      # NVreg_PreserveVideoMemoryAllocations=1
      powerManagement.enable = true;
    };
  };

  services = {
    xserver = {
      enable = true;
      xkb = {
        options = "eurosign:e";
        layout = "us";
      };
      videoDrivers = ["nvidia"];
    };
    libinput.enable = true;
  };

  # Test
  environment.sessionVariables = {LIBVA_DRIVER_NAME = "iHD";};
  environment.systemPackages = with pkgs; [
    nvidia-vaapi-driver
    egl-wayland
  ];
}
