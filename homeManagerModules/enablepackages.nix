{ lib, pkgs, config, ... }:
{
  anki.enable = lib.mkDefault true;
  "1password".enable = lib.mkDefault true;
  gcc.enable = lib.mkDefault true;
  vivaldi.enable = lib.mkDefault true;
}
