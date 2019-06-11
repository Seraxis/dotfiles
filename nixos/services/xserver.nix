{
  # Enable the X11 Windowing System
  enable = true;
  layout = "us";

  # Change caps lock to control
  xkbOptions = "caps:ctrl_modifier";
  
  # Touchpad controls
  libinput = import ./libinput.nix;

  # Use the lightdm greeter with theme mini
  displayManager.lightdm.greeters.mini = {
    enable = true;
    user = "aya";
    extraConfig = ''
      [greeter]
      show-password-label = false
      [greeter-theme]
      background-image = ""
    '';
  };
  
  # Use dwm as the default window manager
  windowManager = {
    default = "dwm";

    session = [{
      name = "dwm";
      start = "/run/current-system/sw/bin/dwm";
    }];
  };

  desktopManager = {
    default = "none";
    xterm.enable = false;
  };
}
