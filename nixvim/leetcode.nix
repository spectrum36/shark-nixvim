{ lib, ... }: {
  plugins.leetcode = {
    enable = true;
    settings = {
      lang = "python3";
      cache = lib.nixvim.mkRaw "vim.fn.stdpath('cache') .. '/leetcode'";
      storage = "~/Projects/leet";
    };
  };
}
