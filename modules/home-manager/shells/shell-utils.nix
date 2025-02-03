{ inputs, pkgs, ... }:

{
  programs.eza = {
    enable = true;
  };

  programs.bat = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
  };
}
