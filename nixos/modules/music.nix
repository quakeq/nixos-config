{ pkgs, ...}: 

{
  environment.systemPackages = with pkgs; [
    cmus
    playerctl
  ];
}

