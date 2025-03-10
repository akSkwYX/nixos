{ pkgs, lib, config, inputs, ... }:
{
  options = {
    fish.enable = lib.mkEnableOption "enable fish";
  };

  config = lib.mkIf config.fish.enable {  
    programs.fish = {
      enable = true;

      
    };
    users.defaultUserShell = pkgs.fish;
  };
}
