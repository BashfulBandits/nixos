{ pkgs, ... }:

pkgs.writeShellScriptBin "nr" ''
  cd $HOME/nixos
  ${pkgs.git}/bin/git add --all
  #sudo nom build switch --flake $HOME/nixos#$1
  sudo nixos-rebuild switch --flake ~/nixos#1 --log-format internal-json -v |& nom --json
''
