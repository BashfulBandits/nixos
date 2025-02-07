{ pkgs, ... }:

pkgs.writeShellScriptBin "nix-rebuild-script" ''
  cd $HOME/nixos
  ${pkgs.git}/bin/git add --all
  sudo nixos-rebuild switch --flake $HOME/nixos#$1
''

