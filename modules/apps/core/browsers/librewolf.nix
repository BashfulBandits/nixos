{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    librewolf-unwrapped
    pywalfox-native
  ];

  permittedInsecurePackages = [
    "librewolf-unwrapped-151.0.1-2"
  ];
}
