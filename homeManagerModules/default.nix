{ pkgs, lib, ... }:
{
  imports = [
    ./git.nix
    ./wezterm.nix
    ./hyprland.nix
    ./enablepackages.nix 
    ./latex.nix
    ./nvim.nix
    ./fish.nix
    ./firefox.nix
  ];

  git.enable = true;
  wezterm.enable = true;
  hyprland.enable = true;
  latex.enable = true;
  nvim.enable = true;
  fish.enable = lib.mkDefault true;
  firefox.enable = true;
}
