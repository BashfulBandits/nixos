{ inputs, pkgs, ... }:

{
  imports = [
    ./art/default.nix
    ./coding/default.nix
    ./organization/default.nix
  ];

  environment.systemPackages = with pkgs; [
    dolphin
  ];
}
