{ pkgs, lib, config, inputs, ... }:
{
  options = {
    nerdfonts.enable = lib.mkEnableOption "enable nerdfonts";
  };

  config = lib.mkIf config.nerdfonts.enable {  
    fonts.packages = [] 
      ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
  };
}
