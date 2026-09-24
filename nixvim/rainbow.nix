{
  plugins.rainbow = {
    enable = true;
    settings = {
      active = 1;
      conf = {
        guifgs = [
          "#7d8618"
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
