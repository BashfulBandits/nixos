{ pkgs, ... }:

pkgs.writeShellScriptBin "nixos-rebuild-script" ''
  cd $HOME/nixos
  ${pkgs.git}/bin/git commit -m $2
  sudo nixos-rebuild switch --flake $HOME/nixos#$1
''

