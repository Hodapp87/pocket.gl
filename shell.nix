{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
    name = "pocketgl";
    buildInputs = [pkgs.nodePackages.bower];
  }

# Build process, right now:
# nix-shell
# bower install
# cd build
# ./build-all.sh

# TODO:
# Run bower2nix and make this an actual build?
