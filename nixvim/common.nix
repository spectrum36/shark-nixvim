{ pkgs, ... }:{
  imports = [
    ./leetcode.nix
    ./neocord.nix
    ./rainbow.nix
    ./options.nix
    ./lsp.nix
    ./plugins.nix
    ./treesitter.nix
    (import ./lint.nix { inherit pkgs; })
  ];
}
