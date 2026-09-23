{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      nixvimInjections = true;
    };

    treesitter-textobjects = {
      enable = true;
      settings = {
        enable = true;
        lookahead = true;
      };
    };
  };
}
