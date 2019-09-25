{ pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  # ---- Boot ----
  # Load vender backlight driver
  boot.kernelParams = [ ''acpi_osi="!Windows 2012"'' ];

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
  networking = {
    hostName = "Bunbunmaru";
    
    networkmanager = {
      enable = true;
      packages = [ pkgs.networkmanagerapplet ];
      dns = "none";
      dhcp = "dhcpcd";
    };

    dhcpcd.enable = true;

    nameservers = [
      # OpenDNS IPv4
      "208.67.222.222"
      "208.67.220.220"
    ];
    
    # TODO: Ports
    firewall.allowPing = false;
  };

  # ---- Hardware ----
  hardware = {
    pulseaudio = {
      enable = true;
      package = pkgs.pulseaudioFull;
    };
  };
}
