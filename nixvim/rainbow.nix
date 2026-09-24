{
  plugins.rainbow = {
    enable = true;
    settings = {
      active = 1;
      conf = {
        guifgs = [
          "yellow"
          "darkorange3"
          "seagreen3"
          "firebrick"
        ];
        ctermfgs = [
          "yellow"
          "darkorange3"
          "seagreen3"
          "firebrick"
        ];
        operators = "_,_";
        parentheses = [
          "start=/(/ end=/)/ fold"
          "start=/\\[/ end=/\\]/ fold"
          "start=/{/ end=/}/ fold"
        ];
        seperately = {
          "*" = { };
        };
      };  
    };
  };
}
