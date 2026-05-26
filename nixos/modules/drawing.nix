{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rnote
    krita
  ];
}
