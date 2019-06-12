{
  programs = {
    fish = import ./fish;

    # This needs to be enabled for nm-connection-editor to work for some reason
    dconf.enable = true; 
  };
}
