{ config, pkgs, lib, ... }:
{
  options = {
    wezterm.enable = lib.mkEnableOption "enable wezterm";
  };

  config = lib.mkIf config.wezterm.enable {  
    home.packages = [
      pkgs.wezterm
    ]; 
    
    home.file = {
     ".wezterm.lua".source = ../dotfiles/wezterm.lua;
     ".wezterm.lua".target = ".config/.wezterm.lua";
    };
  };
}
