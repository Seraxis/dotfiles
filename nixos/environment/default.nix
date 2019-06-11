{ pkgs, ... }:

{
  environment = {
    systemPackages = (import ./system-packages.nix) pkgs;
    variables = import ./variables.nix;
  };
}
