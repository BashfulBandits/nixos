{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    stow
  ];
}
