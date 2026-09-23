{ lib, ... }: {
  plugins = {
    bufferline.enable = lib.mkDefault true;
    lualine.enable = lib.mkDefault true;
    commentary.enable = true;
    oil.enable = lib.mkDefault true;
    colorizer = {
      enable = true;
      autoLoad = true;
    };
    nix.enable = true;
    nvim-autopairs.enable = true;
    nvim-surround.enable = true;
  };
}
