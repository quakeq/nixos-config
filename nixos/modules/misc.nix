{pkgs, ...}: 

{
  environment.systemPackages = with pkgs; [
    xev
    btop
    google-chrome
  ];
}
