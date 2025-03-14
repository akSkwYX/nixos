{ pkgs, lib, ... }:
{
  imports = [
    ./git.nix
    ./wezterm.nix
    ./rofi.nix
    ./hyprland.nix
    ./waybar.nix
    ./enablepackages.nix 
    ./latex.nix
    ./nvim.nix
  ];

  git.enable = true;
  wezterm.enable = true;
  rofi.enable = true;
  hyprland.enable = true;
  waybar.enable = true;
  latex.enable = true;
  nvim.enable = true;
}
