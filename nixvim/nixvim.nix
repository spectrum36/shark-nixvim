{ pkgs, ... }:{
  imports = [
    ./colorscheme.nix
    ./treesitter.nix
    ./cmp.nix
    (import ./common.nix { inherit pkgs; })
  ];
}
