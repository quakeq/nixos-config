{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    styluslabs-write
    krita
  ];
}
