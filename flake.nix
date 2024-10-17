{
  description = "Ephrem's NixOS flake";

  inputs = {
    # NixOS stable official package 
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    # Nixos unstable package
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    }; 
  };

  outputs = { self, nixpkgs,  ... }@inputs: 
      {

      nixosConfigurations.ephrem = nixpkgs.lib.nixosSystem {
        specialArgs = { 
          inherit inputs; 
          };
              
        modules = [
          ./hosts/default/configuration.nix
          #inputs.home-manager.nixosModules.default
          inputs.home-manager.nixosModules.home-manager  
        {
           home-manager.useGlobalPkgs = true;
           home-manager.useUserPackages = true;
            home-manager.users.ephrem = import ./hosts/default/home.nix;
         }  
        ];
      };
    };
}
