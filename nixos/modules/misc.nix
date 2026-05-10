{pkgs, ...}: 

{
  environment.systemPackages = with pkgs; [
    xev
    btop
  ];
}
