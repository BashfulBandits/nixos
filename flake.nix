{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Extra Programs

    matugen = {
      url = "github:InioX/Matugen";
    };

    awww.url = "git+https://codeberg.org/LGFae/awww";

    astal.url = "github:aylur/astal";
    ags.url = "github:aylur/ags"; 

    stylix.url = "github:danth/stylix";
    nix-colors.url = "github:misterio77/nix-colors";

    hyprland.url = "github:hyprwm/Hyprland";

    catppuccin-vsc.url = "https://flakehub.com/f/catppuccin/vscode/*.tar.gz";

    home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };


    # System Config Flakes

    linux-kernel-flake.url = "path:./modules/system/linux/kernel";
  };

  outputs = { self, nixpkgs, ... } @ inputs: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/default/configuration.nix
        inputs.linux-kernel-flake.nixosModules.latest-kernel

        inputs.home-manager.nixosModules.default
        inputs.stylix.nixosModules.stylix
      ];
    };
  };
}
