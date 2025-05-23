{ pkgs, lib, config, ... }:
{
  options = {
    hyprland.enable = lib.mkEnableOption "enable hyprland";
  };

  config = lib.mkIf config.hyprland.enable {  
    home.packages = lib.mkIf config.hyprland.enable [
      pkgs.hyprpaper
      pkgs.rofi
      pkgs.waybar
      pkgs.libnotify
      pkgs.swaynotificationcenter
      pkgs.hyprlock
      pkgs.hypridle
      pkgs.hyprcursor
      pkgs.cliphist
      pkgs.kdePackages.dolphin
    ];

    home.file = lib.mkIf config.hyprland.enable {
      ".hyprland".source = ../dotfiles/hypr;
      ".hyprland".target = ".config/hypr";
      ".hyprland".recursive = true;

      ".rofi".source = ../dotfiles/rofi;
      ".rofi".target = ".config/rofi";
      ".rofi".recursive = true;

      ".rofi-themes".source = ../dotfiles/local/share/rofi/themes;
      ".rofi-themes".target = ".local/share/rofi/themes";
      ".rofi-themes".recursive = true;

      ".waybar".source = ../dotfiles/waybar;
      ".waybar".target = ".config/waybar";
      ".waybar".recursive = true;
    };
  };
}
