{ config, pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kevin = {
    isNormalUser = true;
    description = "kevin";
    extraGroups = [ "networkmanager" "wheel" "dialout" "docker" ];
    packages = with pkgs; [
      firefox
      thunderbird
      pass
      pass-extension-otp
      mutt
      newsboat
      calibre
      mosh
      taskwarrior
    ];
  };
  # Set your time zone.
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.utf8";

}
