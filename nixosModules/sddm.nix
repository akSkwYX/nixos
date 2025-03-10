{ pkgs, lib, config, inputs, ... }:
let 
sddm-astronaut = pkgs.sddm-astronaut.override {
  themeConfig = {
    ForceHideCompletePassword = true;
  };
};
in
{
  options = {
    sddm.enable = lib.mkEnableOption "enable sddm";
  };

  config = lib.mkIf config.sddm.enable {  
    services.displayManager.sddm = {
      enable = true;
      package = pkgs.kdePackages.sddm;
      
      theme = "sddm-astronaut-theme";
      extraPackages = [sddm-astronaut];
   
      wayland.enable = true;
    };

    environment.systemPackages = [
      sddm-astronaut
    ];
  };
}
