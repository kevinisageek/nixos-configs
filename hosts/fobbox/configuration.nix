{ config, pkgs, ... }: {
  imports =  
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix ../../hardware/ssd.nix
    ];
    
    networking.hostName = "fobbox";
    services.openssh.enable = true;
    nixpkgs.config.allowUnfree = true;
}
