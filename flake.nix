{
  description = "Home Manager configuration of kirura";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      homeConfigurations."kirura" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home/home.nix ];
      };
    };
}
