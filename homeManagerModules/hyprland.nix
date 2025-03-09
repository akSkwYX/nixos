{ pkgs, lib, config, ... }:
{
  options = {
    hyprland.enable = lib.mkEnableOption "enable hyprland";
  };

  config = lib.mkIf config.hyprland.enable {  
    home.file = {
     ".hyprland".source = ../dotfiles/hypr;
     ".hyprland".target = ".config/hypr";
     ".hyprland".recursive = true;
    };
  };
}
