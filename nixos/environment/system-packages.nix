pkgs:

let
  packages = with pkgs; [
    # Developer tools
    docker
    emacs
    fish
    git
    gnupg
    tree
    tmux
    vim
    
    cargo
    clang
    ghc
    python
    python3
    rustc

    # Desktop environment
    dmenu
    dwm
    slock
    slstatus
    st
    
    # Desktop Applications
    discord
    firefox
    gimp
    mpv
    tor-browser-bundle-bin
    weechat
    
    # Utilities
    acpi
    acpid
    feh
    ffmpeg
    maim
    man_db
    mkpasswd
    neofetch
    ranger
    which
  ];
in
  packages
