{ pkgs, lib, config, ... }:
{
  options = {
    anki.enable = lib.mkEnableOption "enable anki";
  };

  config = lib.mkIf config.anki.enable {  
    home.packages = [ pkgs.anki ];
  };
}
