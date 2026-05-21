{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    krusader
    kdiff3
    krename
    lha
    zip
    arj
    rar
    unrar
    rpm
    dkpg
    p7zip
  ];
}
