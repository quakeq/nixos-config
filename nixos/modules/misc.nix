{pkgs, ...}: 

{
  environment.systemPackages = with pkgs; [
    xev
    btop
    google-chrome
    obsidian
    unzip
    mpv
    gnupg
    pinentry-curses
    xrandr
  ];
}
