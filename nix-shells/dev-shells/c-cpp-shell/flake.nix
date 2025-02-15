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
      buildInputs = [
          pkgs.clang #pkgs.clang-tools
          pkgs.cmake pkgs.gcc14 pkgs.libgcc
          pkgs.ccls
      ];

    shellHook = ''
      export LD_LIBRARY_PATH=${pkgs.clang}/lib:$LD_LIBRARY_PATH
      #export LD_LIBRARY_PATH=${pkgs.clang-tools}/lib:$LD_LIBRARY_PATH 
      export LD_LIBRARY_PATH=${pkgs.ccls}/lib:$LD_LIBRARY_PATH
      export LD_LIBRARY_PATH=${pkgs.gcc14}/lib:$LD_LIBRARY_PATH
      export LD_LIBRARY_PATH=${pkgs.libgcc}/lib:$LD_LIBRARY_PATH
    '';
    };
  };
}
