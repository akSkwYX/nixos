{ pkgs, lib, config, ... }:
{
  options = {
    rofi.enable = lib.mkEnableOption "enable rofi";
  };

  config = lib.mkIf config.rofi.enable {  
    home.packages = [
      pkgs.rofi
    ];

    home.file = {
     ".rofi".source = ../dotfiles/rofi;
     ".rofi".target = ".config/rofi";
     ".rofi".recursive = true;
    };
  };
}
