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
    networkmanagerapplet
    tor-browser-bundle-bin
    weechat
    
    # Utilities
    acpi
    acpid
    curl
    dhcpcd
    feh
    ffmpeg
    htop
    lshw
    lsof
    maim
    man_db
    mkpasswd
    neofetch
    pamix
    ranger
    unzip
    wget
    which
    zip
  ];
in
  packages
