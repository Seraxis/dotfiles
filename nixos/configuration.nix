# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # symlink ./machines/HOSTNAME.nix
      # sudo ln -sr /etc/nixos/machines/{HOSTNAME/default,self}.nix
      ./machines/self.nix

      # common
      ./environment
      ./programs
      ./services
      ./users
    ];

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # Time zone
  time.timeZone = "Europe/London";

  # Allow unfree packages to be built
  nixpkgs.config = {
    allowUnfree = true;
  };

  # Automatic package garbage collection at 5pm
  nix.gc.automatic = true;
  nix.gc.dates = "17:00";

  system.stateVersion = "19.03";
}
