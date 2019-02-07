{ pkgs ? import <nixpkgs> {} }:

{
  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;

sundials2 = pkgs.callPackage ./pkgs/sundials2 { };
}
