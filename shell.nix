# This file defines a nix shell (an isolated terminal environment with python installed).
# You dont need to worry about it for the workshop unless you are using the nix 
# package manager and find this helpful. If youre interested you can learn more about 
# nix here: https://nix.dev/manual/nix/2.18/introduction 
{ pkgs ? import <nixpkgs> {} }:
let
  myPy = pkgs.python3.withPackages (ps: with ps; [
    ruff
    pytest
  ]);
in 
pkgs.mkShell {
  buildInputs = [ myPy ];
  shellHook = ''
      echo "Python shell loaded"
  '';
}
  
