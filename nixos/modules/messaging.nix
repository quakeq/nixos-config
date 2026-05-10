{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    webcord
    signal-desktop
    slack
  ];
}
