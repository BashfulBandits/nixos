{  pkgs, lib, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;

  wayland.windowManager.hyprland = {
    enable = true;
  }
}
