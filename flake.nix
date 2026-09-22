{
  description = "shark flavored nixvim config";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixvim,
      ...
    }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
    in
    {
      packages = forAllSystems (
        system:
        let
          sharkNixvim = nixvim.legacyPackages.${system}.makeNixvim (import ./nixvim/nixvim.nix);
        in
        {
          default = sharkNixvim;
          nvim = sharkNixvim;
        }
      );
    };
}
