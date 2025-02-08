{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    stow
    bitwarden-desktop
    bitwarden-cli
  ];
}
