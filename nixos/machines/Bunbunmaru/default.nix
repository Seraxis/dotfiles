{
  imports = [ ./hardware-configuration.nix ];

  # ---- Boot ----
  # Load vender backlight driver
  boot.kernelParams = [ "acpi_backlight=vendor" ];

  # Unencrypt the LUKS partition
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/sda2";
      preLVM = true;
    }
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Boot with splash screen
  boot.plymouth.enable = true;


  # ---- Networking ----
  networking.hostName = "Bunbunmaru"; # Define your hostname.
  networking.networkmanager.enable = true;

  networking.dhcpcd.enable = true;
}
