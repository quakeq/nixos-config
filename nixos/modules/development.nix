{ pkgs, config, ... }: 

{
  environment.systemPackages = with pkgs; [
    android-studio
    git-credential-manager
    vscode
    android-tools
    python3
  ];
}
