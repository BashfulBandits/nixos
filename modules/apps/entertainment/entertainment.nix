{ pkgs, ... }:

{
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;

  programs.gamemode.enable = true;

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS =
      "/home/bash/.steam/root/compatibilitytools.d";
  };

  environment.systemPackages = with pkgs; [
    spotify
    ncspot
    lutris
    mangohud
    protonup
    bottles
    osu-lazer-bin
    azahar
    melonDS
  ];
}
