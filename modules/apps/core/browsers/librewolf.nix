{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    librewolf
    pywalfox-native
  ];
}
