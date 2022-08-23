{ config, pkgs, ... }: {
  imports =  
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix ../../hardware/ssd.nix
      #<nixos-hardware/lenovo/thinkpad/x260>
    ];
    
    networking.hostName = "basecamp";
    services.openssh.enable = true;
}
