{ config, pkgs, lib, ... }:
{
  options = {
    latex.enable = lib.mkEnableOption "enable latex";
  };

  config = lib.mkIf config.latex.enable {  
    home.packages = [
      pkgs.texliveFull
    ]; 
  };
}
