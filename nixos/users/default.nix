{ pkgs, ... }:

{
  users = {
    defaultUserShell = pkgs.fish;
    users.aya = {
      createHome = true;
      description = "Aya Shameimaru";
      extraGroups = [ "wheel" "netwokmanager" "backlighters" ];
      home = "/home/aya";
      isNormalUser = true;
    };
    groups = {
      backlighters = { };
    };
  };
}
