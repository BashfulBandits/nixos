{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rustup

    zulu8
    zulu
  ];
}
