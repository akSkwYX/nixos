{ pkgs, lib, ... }:
{
  imports = [
    ./hyprland.nix
    ./sddm.nix
    ./fish.nix
    ./fonts.nix
  ];

  fish.enable = lib.mkDefault true;
  hyprland.enable = lib.mkDefault true;
  sddm.enable = lib.mkDefault true;
  nerdfonts.enable = lib.mkDefault true;
}
