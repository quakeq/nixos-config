{
  description = "quakeq's nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
    };

   silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
  in {
    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
	  ./nixos/configuration.nix
	  ./modules/hyprland.nix
	  ./modules/sddm.nix
	  ./modules/fonts.nix
	  ./modules/misc.nix
	  ./modules/development.nix
	  ./modules/music.nix
	  ./modules/bluetooth.nix
	  ./modules/messaging.nix
	  ./modules/gaming.nix
	  ./modules/blender.nix
	  ./modules/printing.nix
	  ./modules/vpn.nix
	  ./modules/qbittorrent.nix
	  ./modules/kicad.nix
	  ./modules/screenshot.nix
	  ./modules/localsend.nix
	];
      };
    };
  };
}
