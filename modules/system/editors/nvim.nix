{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    tree-sitter
    neovim
  ];
}
