{ lib, ... }: {
  colorschemes.nightfox.enable = lib.mkDefault true;
  opts = {
    number = lib.mkDefault true;
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    smarttab = true;
    termguicolors = true;
  };
  globals = {
    editorconfig = false;
  };
}
