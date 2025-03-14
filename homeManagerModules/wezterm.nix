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
     ".wezterm".source = ../dotfiles/wezterm;
     ".wezterm".target = ".config/wezterm";
     ".wezterm".recursive = true;
    };
  };
}
