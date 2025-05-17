{ pkgs, lib, config, inputs, ... }:
{
  options = {
    nerdfonts.enable = lib.mkEnableOption "enable nerdfonts";
    awesomefont.enable = lib.mkEnableOption "enable awesomefont";
    jetbrainsfont.enable = lib.mkEnableOption "enable jetbrains fonts";
  };

  config = {  
    environment.systemPackages = []
      ++ lib.optional config.awesomefont.enable pkgs.font-awesome
      ++ lib.optional config.jetbrainsfont.enable pkgs.jetbrains-mono
    ;

    fonts.packages = [] 
      ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
  };
}
