{ pkgs, ... }:{
  imports = [
    ./options.nix
    ./lsp.nix
    ./plugins.nix
    ./treesitter.nix
    (import ./lint.nix { inherit pkgs; })
  ];
}
