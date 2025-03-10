{ pkgs, lib, ... }:
{
  imports = [
    ./git.nix
    ./wezterm.nix
    ./rofi.nix
    ./hyprland.nix
    ./packages.nix
    ./enablepackages.nix 
    ./latex.nix
    ./nvim.nix
  ];

  git.enable = lib.mkDefault true;
  wezterm.enable = lib.mkDefault true;
  rofi.enable = lib.mkDefault true;
  hyprland.enable = lib.mkDefault true;
  latex.enable = lib.mkDefault true;
  nvim.enable = lib.mkDefault true;
}
