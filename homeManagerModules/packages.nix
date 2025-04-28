{ pkgs, lib, config, ... }:
{
  options = {
    anki.enable = lib.mkEnableOption "enable anki";
    "1password".enable = lib.mkEnableOption "enable 1password";
    c.enable = lib.mkEnableOption "enable c";
    vivaldi.enable = lib.mkEnableOption "enable vivaldi";
    ocaml.enable = lib.mkEnableOption "enable ocaml and all tools";
    javascript.enable = lib.mkEnableOption "enable nodejs";
    lua.enable = lib.mkEnableOption "enable lua";
    fastfetch.enable = lib.mkEnableOption "enable fastfetch";
    discord.enable = lib.mkEnableOption "enable discord";
    obsidian.enable = lib.mkEnableOption "enable obsidian";
    ticktick.enable = lib.mkEnableOption "enable ticktick";
  };

  config = {  
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
    
    home.packages = []
      ++ lib.optional config.anki.enable pkgs.anki
      ++ lib.optional config."1password".enable pkgs._1password-gui
      ++ lib.optional config.c.enable pkgs.gccgo14
      ++ lib.optional config.c.enable pkgs.harper
      ++ lib.optional config.c.enable pkgs.cppcheck
      ++ lib.optional config.vivaldi.enable pkgs.vivaldi
      ++ lib.optional config.ocaml.enable pkgs.ocaml
      ++ lib.optional config.ocaml.enable pkgs.dune_3
      ++ lib.optional config.ocaml.enable pkgs.ocamlPackages.ocaml-lsp
      ++ lib.optional config.ocaml.enable pkgs.ocamlPackages.ocamlformat
      ++ lib.optional config.javascript.enable pkgs.nodejs_23
      ++ lib.optional config.javascript.enable pkgs.lua-language-server
      ++ lib.optional config.fastfetch.enable pkgs.fastfetch
      ++ lib.optional config.discord.enable pkgs.discord
      ++ lib.optional config.obsidian.enable pkgs.obsidian
      ++ lib.optional config.ticktick.enable pkgs.ticktick
    ;
  };
}
