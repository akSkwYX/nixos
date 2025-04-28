{ pkgs, lib, config, inputs, ... }:
{
  options = {
    nerdfonts.enable = lib.mkEnableOption "enable nerdfonts";
    awesomefont.enable = lib.mkEnableOption "enable awesomefont";
  };

  config = {  
    environment.systemPackages = []
      ++ lib.optional config.awesomefont.enable pkgs.font-awesome
    ;

    fonts.packages = [] 
      ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
  };
}
