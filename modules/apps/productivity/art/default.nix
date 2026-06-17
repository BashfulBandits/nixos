{ inputs, pkgs, ... }:

{
  imports = [
    ./blender.nix
  ];

  environment.systemPackages = with pkgs; [

    #aseprite
    krita
  ];
}
