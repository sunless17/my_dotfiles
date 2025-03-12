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
    zed-editor
    aria2
    helix
    mpv
    zathura
    lazygit
    emacs
    ollama
    ghostty
    docker
    gimp
    yt-dlp
    stow
    discord-canary
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
    docker
    hyprland
    mako
    # dev
    rustup
    pkg-config
    openssl
    # openssl.dev
    sqlite
    clang
    gnumake
    nixpkgs-fmt
    nodejs
  ];

  # environment.sessionVariables = rec {
  # PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
  # };

  # # rust
  # programs.nix-ld.enable = true;
  # programs.nix-ld.libraries = with pkgs; [
  #   cargo
  # ];

  # emacsclient
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

  # shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = [ pkgs.zsh ];

  # hyprland
  programs.hyprland.enable = true;

  # docker
  virtualisation.docker.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # run the nix search command
  # nix.settings.experimental-features = [ "nix-command" "flakes" ];

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

  # # Configure keymap in X11
  # services.xserver.xkb = {
  #   layout = "us";
  #   variant = "";
  # };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sunless = {
    isNormalUser = true;
    description = "sunless";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "sunless";

  # version
  system.stateVersion = "24.11"; # Did you read the comment?
}
