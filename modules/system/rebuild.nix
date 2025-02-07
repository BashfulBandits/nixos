{ pkgs, ... }:

pkgs.writeShellScriptBin "nix-rebuild-script" ''
  echo "Hello, world." | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat
''

