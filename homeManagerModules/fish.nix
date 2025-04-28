{ pkgs, lib, config, ... }:
{
  
  options = {
    fish.enable = lib.mkEnableOption "enable fish";
  };

  config = lib.mkIf config.fish.enable {  
    programs.fish = {
      enable = true;
      shellAliases = {
        tipe = "cd $home/Cours/TIPE/remakeTIPE && nvim";
        config = "cd $home/.nixos && nvim";
      };
    };
  };
}
