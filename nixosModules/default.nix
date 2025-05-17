{ pkgs, lib, ... }:
{
  imports = [
    ./hyprland.nix
    ./sddm.nix
    ./fonts.nix
  ];

  hyprland.enable = lib.mkDefault true;
  sddm.enable = lib.mkDefault true;
  nerdfonts.enable = lib.mkDefault true;
  awesomefont.enable = lib.mkDefault true;
  jetbrainsfont.enable = lib.mkDefault true;
}
