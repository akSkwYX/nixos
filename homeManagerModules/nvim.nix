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
     ".neovim".source = ../dotfiles/nvim;
     ".neovim".target = ".config/nvim";
     ".neovim".recursive = true;
    };
  };
}
