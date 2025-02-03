{ inputs, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./tmux.nix
    ./shell-utils.nix
  ];
}
