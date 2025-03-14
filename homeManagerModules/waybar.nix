{ pkgs, lib, config, ... }:
{
  options = {
    waybar.enable = lib.mkEnableOption "enable waybar";
  };

  config = lib.mkIf config.waybar.enable {  
    home.packages = [
      pkgs.waybar
      pkgs.ags
    ];
    home.file = {
    ".waybar".source = ../dotfiles/waybar;
    ".waybar".target = ".config/waybar";
    ".waybar".recursive = true;
    };
  };
}
