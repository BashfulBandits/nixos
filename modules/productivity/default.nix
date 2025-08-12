{ inputs, pkgs, ... }:

{
  imports = [
    ./art/default.nix
    ./organization/default.nix
  ];

  #environment.systemPackages = with pkgs; [
  #];
}
