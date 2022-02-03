{
  inputs.coricamu.url = "github:danth/coricamu";

  outputs =
    { coricamu, ... }:
    coricamu.lib.generateFlakeOutputs {
      outputName = "website";
      modules = [ ./default.nix ];
    };
}

