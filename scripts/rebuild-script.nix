{ pkgs, ... }:

pkgs.writeShellScriptBin "nixos-rebuild-script" ''
  cd $HOME/nixos &&
  sudo nixos-rebuild switch --flake $HOME/nixos#$1 &&
''
