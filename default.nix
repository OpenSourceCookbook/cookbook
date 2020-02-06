{ nixpkgs ? import <nixpkgs>{} }:

with nixpkgs;

stdenv.mkDerivation rec {
  name = "cookbook";
  src =  ./.;
  buildInputs = [ texlive.combined.scheme-full ];

  buildPhase = "make";
  
  # installPhase = ''
#   mkdir $out
#   cp document.pdf $out/
# '';
}
