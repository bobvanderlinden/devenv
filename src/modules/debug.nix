{ lib, config, ... }:
{
  options.devenv = {
    debug = lib.mkEnableOption "debug mode of devenv enterShell script";
  };

  config = lib.mkIf config.devenv.debug {
    # Run debug statement before anything else.
    enterShell = lib.mkOrder 100 ''
      set -x
    '';
  };
}
