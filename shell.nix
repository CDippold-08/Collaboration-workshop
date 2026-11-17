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
  
