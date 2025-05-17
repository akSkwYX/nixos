{ config, pkgs, system, inputs, ... }:

{
  imports = [
    ./../../homeManagerModules/default.nix
  ];

  home.username = "skwyx";
  home.homeDirectory = "/home/skwyx";

  home.stateVersion = "24.11";

  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "wezterm";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
