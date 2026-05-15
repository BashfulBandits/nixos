{ pkgs, ... }:

{
  imports = []; 
  environment.systemPackages = with pkgs; [
    neovim
  ];
}
