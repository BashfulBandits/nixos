{ inputs, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./tmux.nix
    ./shell-utils.nix
    ./omp.nix
    ./fzf.nix
  ];
}
