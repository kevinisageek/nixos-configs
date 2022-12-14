{ config, pkgs, ... }: {
  imports =  
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix ../../hardware/ssd.nix
    ];
    
    networking.hostName = "basecamp";
    services.openssh.enable = true;
    nixpkgs.config.allowUnfree = true;
}
