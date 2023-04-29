{ pkgs, lib, ... }:

{
  env.LD_LIBRARY_PATH = lib.makeLibraryPath [ pkgs.zlib ];
  languages.python = {
    enable = true;
    poetry.enable = true;
  };
}
