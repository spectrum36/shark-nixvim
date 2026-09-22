{
  plugins = {
    treesitter = {
      enable = true;
      #autoload = true;
      highlight.enable = true;
      indent.enable = true;
      nixvimInjections = true;
    };

    treesitter-context = {
      enable = true;
      #autoload = true;
    };

    treesitter-textobjects = {
      enable = true;
      #autoload = true;
      settings = {
        enable = true;
        lookahead = true;
      };
    };
  };
}
