{ pkgs, lib, config, ... }:
{
  options = {
    anki.enable = lib.mkEnableOption "enable anki";
    "1password".enable = lib.mkEnableOption "enable 1password";
    gcc.enable = lib.mkEnableOption "enable gcc";
    vivaldi.enable = lib.mkEnableOption "enable vivaldi";
  };

  config = {  
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
    
    home.packages = []
      ++ lib.optional config.anki.enable pkgs.anki
      ++ lib.optional config."1password".enable pkgs._1password-gui
      ++ lib.optional config.gcc.enable pkgs.gccgo14
      ++ lib.optional config.vivaldi.enable pkgs.vivaldi
    ;
  };
}
