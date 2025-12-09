{ pkgs, ... }:

{
  imports = [
    ./zsh.nix

    ./starship.nix
  ];
 
  environment.systemPackages = with pkgs; [
    eza
    bat
    zoxide
  ];
}
