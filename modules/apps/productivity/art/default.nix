{ inputs, pkgs, ... }:

#nixpkgs.config.cudaSupport = true;

{
  environment.systemPackages = with pkgs; [
    (blender.override {
        cudaSupport = true;
    })
    blender 
    #cudaPackages.cudatoolkit

    aseprite
    krita
  ];
}
