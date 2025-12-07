{ pkgs, inputs, ... }:

{
  imports = [
    ./virtual_machines.nix
    ./launchers.nix
  ];

  environment.systemPackages = with pkgs; [
    pkgs.CuboCore.coreshot

    hyprshot
    wl-clipboard

    mpv
    stow
    bitwarden-desktop
    bitwarden-cli 
    kdePackages.dolphin
    xorg.xmodmap
    xbindkeys
    xbindkeys-config

    inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
  ];
}
