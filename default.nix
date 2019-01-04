{ nixpkgs ? <nixpkgs> }:
let
  pkgs = import nixpkgs {};
in
with pkgs; with idrisPackages; build-idris-package  {
  name = "sdl2";
  version = "2018-01-19";

  idrisDeps = [ effects ];

  extraBuildInputs = [ pkgconfig SDL2 SDL2_gfx ];

  src = ./.;

  meta = {
    description = "SDL2 binding for Idris";
    homepage = https://github.com/steshaw/idris-sdl2;
    maintainers = [ lib.maintainers.brainrape ];
  };
}
