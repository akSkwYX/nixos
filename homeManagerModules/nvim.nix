{ config, pkgs, lib, ... }:
{
  options = {
    nvim.enable = lib.mkEnableOption "enable nvim";
  };

  config = lib.mkIf config.nvim.enable {  
    home.packages = [
      pkgs.neovim
      pkgs.ripgrep
    ]; 
    
    home.file = {
      ".nvim".source = ../dotfiles/nvim;
      ".nvim".target = ".config/nvim";
      ".nvim".recursive = true;
    };
  };
}
