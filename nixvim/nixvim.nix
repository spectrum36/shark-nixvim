{ pkgs, ... }:{
  imports = [
    ./options.nix
    ./colorscheme.nix
    ./lsp.nix
    ./plugins.nix
    ./treesitter.nix
    ./cmp.nix
    (import ./lint.nix { inherit pkgs; })
  ];
}
