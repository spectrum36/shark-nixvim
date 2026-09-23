{ pkgs, ... }:{
  imports = [
    ./options.nix
    ./phone-options.nix
    ./lsp.nix
    ./plugins.nix
    ./phone-plugins.nix
    ./treesitter.nix
    (import ./lint.nix { inherit pkgs; })
  ];
}
