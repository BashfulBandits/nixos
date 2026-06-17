{ inputs, pkgs, ... }:

(blender.override {cudaSupport = true;})

{
  nixpkgs.config.cudaSupport = true;

  environment.systemPackages = with pkgs; [
    blender 
    cudaPackages.cudatoolkit
  ];
}
