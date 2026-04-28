{ pkgs, inputs, ... }:

{
  imports = [
    ./virtual_machines.nix
    ./launchers.nix
    ./nix-utils.nix
    ./qt.nix
    ./gtk.nix
  ];

  environment.systemPackages = with pkgs; [
    pkgs.CuboCore.coreshot

    hyprshot
    wl-clipboard

    gscreenshot

    mpv
    stow
    bitwarden-desktop
    bitwarden-cli 
    kdePackages.dolphin
    xmodmap
    #xbindkeys
    #xbindkeys-config

    inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
  ];
}
