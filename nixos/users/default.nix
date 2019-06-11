{ pkgs, ... }:

{
  users = {
    defaultUserShell = pkgs.fish;
    users.aya = {
      createHome = true;
      description = "Aya Shameimaru";
      extraGroups = [ "wheel" "netwokmanager" ];
      home = "/home/aya";
      isNormalUser = true;
    };
  };
}
