#lsp servers
{
  plugins = {
    lsp-format.enable = true;
    lsp = {
      enable = true;
      servers = {
        yamlls = {
          enable = true;
          settings = {
            schemaStore = {
              enable = false;
              url = "";
            };
          };
        };

        gopls = {
          enable = true;
          autostart = true;
        };

        lua_ls = {
          enable = true;
          settings.telemetry.enable = false;
        };

        #python
        pyright.enable = true;

        #html and css
        html.enable = true;
        cssls.enable = true;

        #docker
        dockerls.enable = true;
        docker_compose_language_service.enable = true;

        #bash
        bashls.enable = true;

        #c/c++
        clangd.enable = true;

        #ts/js
        ts_ls.enable = true;
      };
    };
  };
  filetype.pattern = {
    "docker-compose.*\\.ya?ml" = "yaml.docker-compose";
    "compose.*\\.ya?ml" = "yaml.docker-compose";
  };
}
