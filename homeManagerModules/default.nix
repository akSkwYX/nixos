{ pkgs, lib, ... }:
{
  imports = [
    ./git.nix
    ./wezterm.nix
    ./rofi.nix
    ./hyprland.nix
    ./packages.nix
    ./enablepackages.nix 
  ];

  git.enable = lib.mkDefault true;
  wezterm.enable = lib.mkDefault true;
  rofi.enable = lib.mkDefault true;
  hyprland.enable = lib.mkDefault true;
}
