# nixos

# Installation
1. install git
2. enable flakes
3. rebuild system
4. clone this repo into your home folder
5. if using default host replace existing hardware-configuration.nix with your own and change username in configuration.nix and home.nix
6. run: "sudo nixos-rebuild switch --flake ~/nixos#default" Replace #default with your host name
