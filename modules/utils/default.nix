{ pkgs, ... }:

{
  imports = [
    ./virtual_machines.nix
  ];

  environment.systemPackages = with pkgs; [
    pkgs.CuboCore.coreshot

    mpv
    stow
    bitwarden-desktop
    bitwarden-cli 
    kdePackages.dolphin
    xorg.xmodmap
    xbindkeys
    xbindkeys-config
  ];
}
