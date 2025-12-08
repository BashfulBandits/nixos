{ pkgs, ... }:

{
  # Shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}
