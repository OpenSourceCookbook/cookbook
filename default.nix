{ nixpkgs ? import <nixpkgs>{} }:

nixpkgs.stdenv.mkDerivation rec {
  name = "cookbook";
  src =  ./.;
  buildInputs = [ nixpkgs.texlive.combined.scheme-full ];
  buildPhase = ./builder.sh;
  installPhase = ''
  mkdir $out
  cp document.pdf $out/
'';
}
