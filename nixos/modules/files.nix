{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    krusader
    kdiff3
    krename
    zip
    arj
    rar
    unrar
    rpm
    p7zip
    qimgv
  ];
}
