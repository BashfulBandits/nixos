{
  description = "A front-end dev-shell flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in 
  {
    devShells."x86_64-linux".default = pkgs.mkShell {
      packages = [ 
          pkgs.clang pkgs.clang-tools pkgs.cmake
          pkgs.neovim 
      ];
    };
  };
}
