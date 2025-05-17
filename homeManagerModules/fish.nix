{ pkgs, lib, config, ... }:
{
  
  options = {
    fish.enable = lib.mkEnableOption "enable fish";
  };

  config = lib.mkIf config.fish.enable {  
    programs.fish = {
      enable = true;
      shellAliases = {
        tipe = "cd /home/skwyx/Cours/TIPE && nvim";
        config = "cd /home/skwyx/.nixos && nvim";
      };
    };
  };
}
