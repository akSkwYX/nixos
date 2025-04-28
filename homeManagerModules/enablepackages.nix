{ lib, pkgs, config, ... }:
{
  imports = [ ./packages.nix ];
  anki.enable = true;
  "1password".enable = true;
  c.enable = true;
  vivaldi.enable = true;
  ocaml.enable = true;
  javascript.enable = true;
  lua.enable = true;
  fastfetch.enable = true;
  discord.enable = true;
  obsidian.enable = true;
  ticktick.enable = true;
}
