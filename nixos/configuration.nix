# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
    # apps
    librewolf
    qutebrowser
    newsboat
    aria2
    helix
    mpv
    zathura
    lazygit
    ghostty
    docker
    gimp
    yt-dlp
    stow
    discord-canary
    anki
    blender
    pandoc
    # cli utils
    htop
    tree
    unzip
    fastfetch
    brightnessctl
    wbg
    bat
    grim
    slurp
    httrack
    fd
    btop
    starship
    fzf
    git
    rofi
    rofimoji
    ncdu
    networkmanager
    zsh
    hyprland
    mako
    # dev
    rustup
    clang
    gnumake
    nodejs
    nixpkgs-fmt
    marksman
    dprint
    python313Packages.grip
  ];

  # shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = [ pkgs.zsh ];

  # hyprland
  programs.hyprland.enable = true;

  # docker
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # limit generations
  boot.loader.systemd-boot.configurationLimit = 3;
  nix.gc = {
    automatic = true;
    options = "--delete-older-than 7d";
  };

  # boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable networking
  networking.networkmanager.enable = true;
  networking.hostName = "nixos";

  # Set your time zone.
  time.timeZone = "Africa/Nairobi";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sunless = {
    isNormalUser = true;
    description = "sunless";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "sunless";

  # version
  system.stateVersion = "24.11"; # Did you read the comment?
}
