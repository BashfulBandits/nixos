{ inputs, ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;  
  boot.loader.efi.canTouchEfiVariables = true;

  #boot.loader = {
  #efi = {
  #canTouchEfiVariables = true;
  ## assuming /boot is the mount point of the  EFI partition in NixOS (as the installation section recommends).
  #efiSysMountPoint = "/boot";
  #};
  #grub = {
  ## despite what the configuration.nix manpage seems to indicate,
  ## as of release 17.09, setting device to "nodev" will still call
  ## `grub-install` if efiSupport is true
  ## (the devices list is not used by the EFI grub install,
  ## but must be set to some value in order to pass an assert in grub.nix)
  #devices = [ "nodev" ];
  #efiSupport = true;
  #enable = true;
  #useOSProber = true;
  ## set $FS_UUID to the UUID of the EFI partition
  #extraEntries = ''
  #menuentry "Windows" {
  #insmod part_gpt
  #insmod fat
  #insmod search_fs_uuid
  #insmod chain
  ## Use NTFS partition UUID here
  #search --fs-uuid --set=root 46fd3b47-8adf-4aed-88f9-d795083d78f9
  #chainloader /EFI/Microsoft/Boot/bootmgfw.efi
  #}'';
  #};
  #};
}
