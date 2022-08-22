{ config, pkgs, ... }:

{
  options = {
    nomadic.ssd.enable = lib.mkEnableOption "Enables TRIM support for SSDs";
  };

  config = lib.mkIf config.nomadic.ssd.enable {
    boot.kernel.sysctl = { "vm.swappiness" = lib.mkDefault 1; };
    services.fstrim.enable = lib.mkDefault true;
  };
}
