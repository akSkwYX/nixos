{ pkgs, lib, config, ... }:
{
  
  options = {
    git.enable = lib.mkEnableOption "enable git";
  };

  config = lib.mkIf config.git.enable {  
    programs.git = {
      enable = true;
      userName = "akSkwYX";
      userEmail = "akskwyx@gmail.com";
    };
  };
}
