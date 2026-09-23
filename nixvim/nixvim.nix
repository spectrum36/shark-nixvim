{ pkgs, ... }:{
  imports = [
    ./options.nix
    ./lsp.nix
    ./plugins.nix
    ./treesitter.nix
    ./cmp.nix
    (import ./lint.nix { inherit pkgs; })
  ];
}
