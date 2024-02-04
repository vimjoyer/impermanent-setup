{
  description = "A flake";

  outputs = { self }: {

    templates = {

      flakeonly = {
        path = ./default;
        description = "Impermanent flake";
      };

      final = {
        path = ./final;
        description = "Impermanent setup";
      };

    };

    defaultTemplate = self.templates.flakeonly;

  };
}
