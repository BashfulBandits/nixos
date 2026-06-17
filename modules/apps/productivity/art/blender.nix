{ inputs, pkgs, ... }:


{
  nixpkgs.config.cudaSupport = true;

  (blender.override {cudaSupport = true;})

  environment.systemPackages = with pkgs; [
    blender 
    cudaPackages.cudatoolkit
  ];
}
