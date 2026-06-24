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
    btop

    pkgs.CuboCore.coreshot

    vlc
    libvlc

    ffmpeg-full

    hyprshot
    wl-clipboard

    gscreenshot

    dust

    mpv
    stow
    kdePackages.dolphin
    xmodmap
    #xbindkeys
    #xbindkeys-config

    inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
  ];
}
