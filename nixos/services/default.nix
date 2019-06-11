{
  services = {
    emacs.enable = true;
    openssh = import ./openssh.nix;
    xserver = import ./xserver.nix;
  };
}
