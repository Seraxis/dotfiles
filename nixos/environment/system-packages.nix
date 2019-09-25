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
    python3
    rustc

    # Desktop environment
    dmenu
    dwm
    slock
    slstatus
    st
    
    # Desktop Applications
    firefox
    gimp
    mpv
    networkmanagerapplet
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
    xorg.xev
    zip

    # Fonts
    source-code-pro
  ];
in
  packages
