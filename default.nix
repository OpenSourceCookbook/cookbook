{ nixpkgs ? import <nixpkgs>{} }:

nixpkgs.stdenv.mkDerivation rec {
  name = "cookbook";
  src =  ./.;
  buildInputs = [ nixpkgs.texlive.combined.scheme-full ];
  buildPhase = ''
export TEXINPUTS="./texmf/:$\{TEXINPUTS\}"

lualatex document
makeglossaries document
makeindex document
lualatex document
lualatex document
'';
}
