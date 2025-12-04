{ ... }:

{
  networking.hostName = "nixos"; # Define your hostname.
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  networking.networkmanager.enable = true;
  #networking.networkmanager.unmanaged = ["*" "except:type:wwan" "except:type:gsm"];
  #networking.networkmanager.wifi.backend = "iwd";  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.wifi.powersave = false;

}
