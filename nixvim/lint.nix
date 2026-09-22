{ pkgs, ... }: {
  plugins = {
    lint = {
      enable = true;
      lintersByFt = {
        python = [ "pylint" ];
        nix = [ "statix" ];
        go = [ "golangcilint" ];
        sh = [ "shellcheck" ];
        c = [ "cppcheck" ];
        cpp = [ "cppcheck" ];
        typescript = [ "eslint_d" ];
        javascript = [ "eslind_d" ];
        typescriptreact = [ "eslint_d" ];
        javascriptreact = [ "eslind_d" ];
        html = [ "htmlhint" ];
        css = [ "stylelint" ];
        lua = [ "luacheck" ];
        dockerfile = [ "hadolint" ];
        yaml = [ "yamllint" ];
      };
      autoCmd = {
        event = [
          "BufWritePost"
          "BufReadPost"
          "InsertLeave"
        ];
      };
    };
  };
  extraPackages = with pkgs; [
    pylint
    statix
    golangci-lint
    shellcheck
    cppcheck
    clang-tools
    eslint_d
    htmlhint
    stylelint
    luajitPackages.luacheck
    hadolint
    yamllint
  ];
  diagnostic.settings = {
    virtual_text = true;
    signs = true;
    underline = true;
    update_in_insert = false;
  };
}
