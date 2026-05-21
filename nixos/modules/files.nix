{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    krusader
  ];
}
