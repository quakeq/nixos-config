{ pkgs, inputs, ...}: 

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
  environment.sessionVariables.HYPRCURSOR_THEME = "rose-pine-hyprcursor";
  
  programs.hyprlock.enable = true;
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
      ];
    };
  };
  
  environment.systemPackages = with pkgs; [
    rofi
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hyprpaper
    hyprsunset
    hyprpolkitagent
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
  ];
}
