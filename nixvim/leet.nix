{ lib, ...  }: {
  plugins.leetcode = {
    enable = true;
    settings = {
      lang = "python3";
      storage = "~/Projects/leet";
      cache = lib.nixvim.mkRaw "vim.fn.stdpath('cache') .. '/leetcode'";
    };
  };
}
